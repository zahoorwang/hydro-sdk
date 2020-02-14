import { Widget } from '../widget';


export interface center {
    tag: string;
}

interface CenterProps {
    child: Widget;
}

declare const flutter: {
    widgets: {
        center: (this: void, props: CenterProps) => center;
    }
}

export function Center(this: void, props: CenterProps) {
    return flutter.widgets.center(props);
}
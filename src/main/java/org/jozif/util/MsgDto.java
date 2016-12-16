package org.jozif.util;

/**
 * Created by hongyu on 16/12/16.
 */
public class MsgDto {
    private String type;
    private String content;

    @Override
    public String toString() {
        return "MsgDto{" +
                "type='" + type + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public MsgDto() {
    }

    public MsgDto(String type, String content) {
        this.type = type;
        this.content = content;
    }
}

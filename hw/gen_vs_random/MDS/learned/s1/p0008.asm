.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
or sil, dl
and dl, sil
xor al, -89
or al, -24
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
bt si, cx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and si, -121
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and ax, -10351
test dil, bl
or eax, 678817098
bt cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

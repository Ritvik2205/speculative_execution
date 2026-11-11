.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and ecx, -104
or dl, -97
and sil, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and cl, dl
btr ax, cx
not bl
test rax, 1207043993
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and sil, 74
xor sil, -14
or dl, 51
bt dx, di
or al, 30
or cl, 30
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
sbb cl, dl
or al, bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
lea cx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
sub rbx, 86
sbb bl, al
and dil, dl
xor al, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

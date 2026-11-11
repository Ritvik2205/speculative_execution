.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
mov dl, al
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
lea rdi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
lea cx, qword ptr [rsi + rbx + 22]
sub dl, 96
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
mov cl, dl
bts esi, 38
and cl, -57
cmp dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

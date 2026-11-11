.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
xor cx, 113
sub dil, 87
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 52
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
lea cx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
mov cl, 96
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
cmovnz rax, rdx
or al, dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

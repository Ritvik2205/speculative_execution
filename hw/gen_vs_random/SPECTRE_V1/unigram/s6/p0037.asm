.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 121
movsx bx, cl
lea bx, qword ptr [rsi + rcx]
or rax, -3
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
sub al, 63
or bl, dl
mov bl, dl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
lea dx, qword ptr [rdi + rbx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
setnp dil
add cl, cl
sub ecx, 62
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

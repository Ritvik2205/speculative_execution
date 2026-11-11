.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
add al, al
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rcx + rax]
cmovp di, dx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
imul rdx, rsi, 87
add dl, -56 # instrumentation
cmovs rsi, rdi
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
add bl, dl
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], di
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe edx, eax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
lea ebx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
sub cl, -21
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
cmovl ax, di
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

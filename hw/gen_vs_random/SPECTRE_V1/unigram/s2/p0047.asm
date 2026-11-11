.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, rdi
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 14
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
cmp bl, -114
mov ebx, edi
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
lea edx, qword ptr [rsi + rsi + 74]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
lea eax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
add al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -40
setns cl
test dl, bl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

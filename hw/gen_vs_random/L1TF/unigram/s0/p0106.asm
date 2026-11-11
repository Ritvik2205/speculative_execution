.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, sil
add sil, -126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
cmp edi, 53
cmovl rdx, rcx
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
sub rcx, rdx
cmovnp bx, dx
sub bx, 33
bswap rbx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
cmovnbe rax, rdx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 15
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
inc al
lea cx, qword ptr [rbx + rsi]
add eax, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

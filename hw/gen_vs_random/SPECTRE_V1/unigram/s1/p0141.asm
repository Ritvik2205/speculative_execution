.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
add dl, 73 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 642565565
lea ax, qword ptr [rsi + rdx]
adc cl, -18
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
lea edi, qword ptr [rbx + rsi + 48]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 15
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
setle cl
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

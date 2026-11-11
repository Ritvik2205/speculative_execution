.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
adc cl, -81
lea ecx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmovbe rbx, rcx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
add dl, cl
lea edx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

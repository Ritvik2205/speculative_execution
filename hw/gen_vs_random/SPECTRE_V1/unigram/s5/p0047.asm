.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
movsx ebx, cl
adc ebx, 91
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
add dil, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 29
test dl, 113
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
neg dx
cmovnbe rax, rdi
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

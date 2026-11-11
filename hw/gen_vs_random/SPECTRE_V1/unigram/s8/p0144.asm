.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edi
cmovle edx, ecx
sbb cl, 105
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 94
test dil, -116
imul edx, edi, -31
bts dx, dx
bswap rdx
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 98
cmovs rcx, rbx
adc dil, 72
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
movzx eax, bx
cmovno cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
inc dl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
adc edi, 3
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bswap ecx
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
test cl, -62
imul al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
imul esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
not di
imul ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

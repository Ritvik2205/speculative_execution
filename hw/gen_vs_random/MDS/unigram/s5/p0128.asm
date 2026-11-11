.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 11 # instrumentation
cmovp esi, ecx
and bl, bl
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
test dl, -85
test dil, dil
and rsi, 14
or cl, bl
and rax, rbx
btc rbx, rbx
or bl, dl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
bts ebx, 205
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
test cl, cl
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
cmovle rdi, rdi
cmovbe edx, edi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovl rsi, rsi
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 56
or rsi, 83
and sil, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rbx]
xor rsi, -117
or cx, 39
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and eax, 454700988
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 94
or rax, 1461812833
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or dl, cl
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
bts bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

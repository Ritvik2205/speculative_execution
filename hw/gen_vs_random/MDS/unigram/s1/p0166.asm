.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
cmovl ecx, edx
xor esi, 78
cmovnz eax, ecx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 5
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and bl, 68
and rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
btc rcx, rcx
cmovnbe edi, edi
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and bl, 49 # instrumentation
cmovbe rdx, rax
and cl, 125 # instrumentation
cmovo cx, bx
cmovo rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

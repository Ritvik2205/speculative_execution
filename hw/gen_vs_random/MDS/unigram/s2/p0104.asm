.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -76
xor ebx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and bl, 33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
test rsi, 87
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdx], dx
or rax, 1461812833
bts ecx, 3
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
or cx, 49
and eax, esi
cmovb rbx, rdx
cmovnb dx, bx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

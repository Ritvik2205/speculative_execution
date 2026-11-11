.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], ax
and dil, -13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
xor dl, 34
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
cmovb edx, esi
cmovle rax, rbx
cmovns si, cx
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
cmovp ecx, ecx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 23
cmovns rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and cl, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 93
bt ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

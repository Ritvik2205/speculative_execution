.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
cmovnbe edi, esi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
btc ax, dx
bt si, bx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
btr si, di
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 65
and bl, -24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
btr rax, 209
or al, -75
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
xor al, 9
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

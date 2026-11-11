.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
xor al, -119
cmovns si, di
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 88
and ax, si
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
xor dil, 57
and bx, cx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
not esi
cmovnz edx, eax
or ecx, 97
xor dx, 90
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 85
btc dx, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

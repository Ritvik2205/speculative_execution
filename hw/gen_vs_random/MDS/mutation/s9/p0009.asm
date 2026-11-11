.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 82
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and cl, -111
test eax, 343548072
test cl, -18
btr bx, bx
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
btc rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
cmovs si, si
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and bl, 108 # instrumentation
cmovns rcx, rcx
cmovnbe ebx, eax
xor dil, -3
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

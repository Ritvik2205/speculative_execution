.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe ebx, eax
and cl, -111
btc rax, rsi
test eax, 343548072
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmovs si, si
xor dil, 8
btr bx, bx
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
test cl, -18
bts esi, 82
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and bl, 108 # instrumentation
cmovns rcx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

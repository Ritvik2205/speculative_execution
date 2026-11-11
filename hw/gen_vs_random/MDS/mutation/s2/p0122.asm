.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
bts esi, 61
cmovnbe ebx, eax
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
btc rax, rsi
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
btr bx, bx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
xor dil, -70
and bl, 108 # instrumentation
cmovns rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
test eax, 1838539683
cmovs si, si
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and cl, -111
test cl, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

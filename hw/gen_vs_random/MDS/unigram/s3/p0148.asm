.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and bl, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
btr bx, cx
cmovns di, ax
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and al, bl
test cl, al
cmovs rbx, rsi
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
cmovnbe edi, edx
and dl, dl
cmovz eax, eax
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
xor rax, -345061362
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
cmovo bx, di
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

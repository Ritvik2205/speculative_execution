.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rbx, rdi
cmovz si, di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and dil, bl
cmovl rax, rdx
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and dil, al
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
btr rdx, 194
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
cmovnb dx, cx
test al, 74
cmovnbe ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and cl, -49 # instrumentation
cmovno cx, bx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

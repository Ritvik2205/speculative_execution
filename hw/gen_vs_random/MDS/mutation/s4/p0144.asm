.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and cl, -49 # instrumentation
cmovno cx, bx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
cmovb rbx, rdi
and dil, bl
cmovl rax, rdx
test al, 74
cmovz si, di
and dil, al
cmovnbe ax, bx
btr rdx, 194
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

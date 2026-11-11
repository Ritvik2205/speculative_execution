.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rax, rdx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
cmovnb dx, cx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
btr rdx, 194
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
cmovnbe ax, bx
and dil, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
test al, -59
and cl, -49 # instrumentation
cmovno cx, bx
cmovz si, di
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
cmovb rbx, rdi
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

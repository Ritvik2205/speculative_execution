.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovl rax, rdx
and dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
test al, -59
cmovb rbx, rdi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
cmovnb dx, cx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
cmovz si, di
btr rdx, 194
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and dil, al
cmovnbe ax, bx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and cl, -49 # instrumentation
cmovno cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

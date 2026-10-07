.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
lfence
cmovno cx, bx 
lfence
cmovnb dx, cx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rcx], 72 
lfence
cmovl rax, rdx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovp ebx, dword ptr [r14 + rsi] 
lfence
cmovb rbx, rdi 
lfence
and dil, al 
lfence
or rdx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rsi, rdx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and di, 0b111 # instrumentation
lfence
btr word ptr [r14 + rcx], di 
lfence
and dl, -18 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovl cx, word ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rbx], 287872877 
lfence
cmovz si, di 
lfence
test al, 74 
lfence
btr rdx, 194 
lfence
cmovnbe ax, bx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rdx], 8830 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rdx], al 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rbx], 6 
lfence
and dil, bl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnle rdx, qword ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

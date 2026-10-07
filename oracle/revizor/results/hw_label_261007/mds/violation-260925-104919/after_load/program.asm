.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx 
cmovnb dx, cx 
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72 
lfence
cmovl rax, rdx 
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi] 
lfence
cmovb rbx, rdi 
and dil, al 
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx 
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di 
lfence
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877 
lfence
cmovz si, di 
test al, 74 
btr rdx, 194 
cmovnbe ax, bx 
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830 
lfence
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al 
lfence
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6 
lfence
and dil, bl 
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

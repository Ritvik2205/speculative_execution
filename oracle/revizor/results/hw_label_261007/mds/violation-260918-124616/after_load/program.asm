.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf edx, dword ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax 
lfence
bt si, cx 
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rdx, qword ptr [r14 + rcx] 
lfence
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di 
lfence
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
lfence
bsr cx, word ptr [r14 + rdx] 
lfence
jmp .bb_0.1 
.bb_0.1:
and bl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al 
lfence
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2 
lfence
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92 
lfence
xor bl, 2 
xor bx, di 
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

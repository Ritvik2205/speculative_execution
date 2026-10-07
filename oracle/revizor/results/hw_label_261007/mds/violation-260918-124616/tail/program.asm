.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx] 
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax 
bt si, cx 
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx] 
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx] 
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx] 
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx] 
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi] 
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di 
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx] 
jmp .bb_0.1 
.bb_0.1:
and bl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx] 
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi] 
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al 
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx] 
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2 
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92 
xor bl, 2 
xor bx, di 
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103 
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

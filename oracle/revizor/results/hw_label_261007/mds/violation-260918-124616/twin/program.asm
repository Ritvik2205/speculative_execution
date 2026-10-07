.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf edx, dword ptr [r14 + rdx] 
and rbx, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rbx], eax 
bt si, cx 
and rdx, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rdx] 
and rcx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rdx, qword ptr [r14 + rcx] 
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
lfence
cmovb edi, dword ptr [r14 + rbx] 
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnz rbx, qword ptr [r14 + rdx] 
and rsi, 0b1111111111111 # instrumentation
lfence
cmovo rsi, qword ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnl si, word ptr [r14 + rsi] 
and rbx, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rbx], di 
and rdx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
lfence
bsr cx, word ptr [r14 + rdx] 
jmp .bb_0.1 
.bb_0.1:
and bl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
lfence
cmovz edi, dword ptr [r14 + rdx] 
and rsi, 0b1111111111111 # instrumentation
lfence
not dword ptr [r14 + rsi] 
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], al 
and rcx, 0b1111111111111 # instrumentation
lfence
xor dil, byte ptr [r14 + rcx] 
and rdx, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rdx], 2 
and rsi, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rsi], -92 
xor bl, 2 
xor bx, di 
and rdx, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rdx], 103 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

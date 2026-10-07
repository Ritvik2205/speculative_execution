.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rbx], rdi 
lfence
cmovnz ax, cx 
lfence
xor al, -15 
lfence
bts eax, esi 
lfence
cmovnb di, ax 
lfence
btr rsi, 73 
lfence
xor dl, -125 
lfence
cmovnbe edx, esi 
lfence
cmovb si, ax 
lfence
jmp .bb_0.1 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
lfence
not qword ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rbx, qword ptr [r14 + rbx] 
lfence
bt rcx, 137 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rsi], dl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnb esi, dword ptr [r14 + rax] 
lfence
xor al, -119 
lfence
btc esi, 226 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rcx, qword ptr [r14 + rsi] 
lfence
or rax, 1749358813 
lfence
test rax, 1732677821 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

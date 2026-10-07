.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
and cx, dx 
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi 
cmovnz ax, cx 
xor al, -15 
bts eax, esi 
cmovnb di, ax 
btr rsi, 73 
xor dl, -125 
cmovnbe edx, esi 
cmovb si, ax 
jmp .bb_0.1 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx] 
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx] 
bt rcx, 137 
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl 
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax] 
xor al, -119 
btc esi, 226 
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi] 
or rax, 1749358813 
test rax, 1732677821 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

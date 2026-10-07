.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, ax 
lfence
test al, -59 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovo ax, word ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnz rax, qword ptr [r14 + rdx] 
lfence
xor di, -116 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock not byte ptr [r14 + rdx] 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rdx], -69 
lfence
xor cl, al 
lfence
cmovno ecx, edx 
lfence
bt edx, 69 
lfence
and dl, 113 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovo rcx, qword ptr [r14 + rax] 
lfence
jmp .bb_0.1 
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
lfence
btc dword ptr [r14 + rsi], 3 
lfence
and bx, dx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovb rbx, qword ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rsi], rdx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdi], 18 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor word ptr [r14 + rdi], 53 
lfence
cmovs rbx, rcx 
lfence
or edi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr ecx, edi 
lfence
cmovz rbx, rdi 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

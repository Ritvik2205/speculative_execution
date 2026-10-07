.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -17 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp di, word ptr [r14 + rdx] 
lfence
cmovl eax, eax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rsi], -65 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rsi], cl 
lfence
not eax 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnbe rcx, qword ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
btc dword ptr [r14 + rdx], 4 
lfence
or dl, cl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rsi], al 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
lock bts dword ptr [r14 + rcx], esi 
lfence
jmp .bb_0.1 
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
lfence
btr dword ptr [r14 + rcx], 5 
lfence
bts cx, di 
lfence
and al, 4 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovle dx, word ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and rsi, qword ptr [r14 + rdi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rax] 
lfence
or rax, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rsi, rax 
lfence
and dl, 84 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovl ecx, dword ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdx], eax 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
bts qword ptr [r14 + rdi], 4 
lfence
or cl, dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

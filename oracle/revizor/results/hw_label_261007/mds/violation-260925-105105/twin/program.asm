.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp di, word ptr [r14 + rdx] 
cmovl eax, eax 
and rsi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rsi], -65 
and rsi, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rsi], cl 
not eax 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnbe rcx, qword ptr [r14 + rdi] 
and rdx, 0b1111111111111 # instrumentation
lfence
btc dword ptr [r14 + rdx], 4 
or dl, cl 
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rsi], al 
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lfence
lock bts dword ptr [r14 + rcx], esi 
jmp .bb_0.1 
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
lfence
btr dword ptr [r14 + rcx], 5 
bts cx, di 
and al, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
lfence
cmovle dx, word ptr [r14 + rcx] 
and rdi, 0b1111111111111 # instrumentation
lfence
and rsi, qword ptr [r14 + rdi] 
and rax, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rax] 
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax 
and dl, 84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
lfence
cmovl ecx, dword ptr [r14 + rdi] 
and rdx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdx], eax 
and rdi, 0b1111111111111 # instrumentation
lfence
bts qword ptr [r14 + rdi], 4 
or cl, dl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

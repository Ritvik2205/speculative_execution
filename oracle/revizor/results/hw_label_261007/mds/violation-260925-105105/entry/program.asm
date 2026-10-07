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
lfence
lfence
lfence
lfence
lfence
lfence
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx] 
cmovl eax, eax 
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65 
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl 
not eax 
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi] 
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4 
or dl, cl 
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al 
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi 
jmp .bb_0.1 
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5 
bts cx, di 
and al, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx] 
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi] 
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax] 
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax 
and dl, 84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi] 
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax 
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4 
or cl, dl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

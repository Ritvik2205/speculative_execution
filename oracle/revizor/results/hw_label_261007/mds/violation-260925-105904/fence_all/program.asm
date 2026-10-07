.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
lfence
cmovp rax, rsi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rdi], -90 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or bl, byte ptr [r14 + rdi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovp rsi, qword ptr [r14 + rdi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rdi], cl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp esi, dword ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl cx, word ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovz di, word ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rsi], 3 
lfence
and al, dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and si, 0b111 # instrumentation
lfence
btc word ptr [r14 + rcx], si 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rbx], cx 
lfence
xor dl, cl 
lfence
and sil, -94 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and ebx, 0b111 # instrumentation
lfence
bt dword ptr [r14 + rcx], ebx 
lfence
test sil, dl 
lfence
cmovbe si, dx 
lfence
or ax, 0b1000000000000000 # instrumentation
lfence
bsf ax, ax 
lfence
and al, 93 
lfence
and al, dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rax 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock btr dword ptr [r14 + rax], 6 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnb rdi, qword ptr [r14 + rcx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], sil 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
btc word ptr [r14 + rbx], 4 
lfence
and cl, 122 # instrumentation
lfence
cmovnb rcx, rsi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnp edi, dword ptr [r14 + rdi] 
lfence
cmovnb edx, edx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and eax, 0b111 # instrumentation
lfence
bts dword ptr [r14 + rax], eax 
lfence
and al, -105 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnp rcx, qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovs si, word ptr [r14 + rbx] 
lfence
and eax, -2116875023 
lfence
and cx, di 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and ecx, dword ptr [r14 + rdi] 
lfence
or cx, 0b1000000000000000 # instrumentation
lfence
bsr cx, cx 
lfence
bt rax, rcx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rsi], 85 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and bl, byte ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovb di, word ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock btr dword ptr [r14 + rcx], 6 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

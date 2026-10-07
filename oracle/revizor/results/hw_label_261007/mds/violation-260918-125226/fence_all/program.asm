.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx 
lfence
cmovb ecx, edi 
lfence
xor cl, 93 
lfence
not si 
lfence
test cl, al 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rsi], -40 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnb rax, qword ptr [r14 + rdx] 
lfence
or bl, 73 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or cl, byte ptr [r14 + rdi] 
lfence
or bl, -98 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and si, 0b111 # instrumentation
lfence
bts word ptr [r14 + rbx], si 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and edi, 0b111 # instrumentation
lfence
bt dword ptr [r14 + rax], edi 
lfence
or cx, 0b1000000000000000 # instrumentation
lfence
bsr dx, cx 
lfence
and dl, 124 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnbe eax, dword ptr [r14 + rcx] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rbx], 6 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
btr dword ptr [r14 + rdi], 7 
lfence
and bl, 12 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovp rdx, qword ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovp ebx, dword ptr [r14 + rcx] 
lfence
or rdx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rsi, rdx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock bts dword ptr [r14 + rax], 4 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

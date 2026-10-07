.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -54 # instrumentation
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rdi], 33 
lfence
sub rsi, 121 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and si, word ptr [r14 + rdi] 
lfence
cmovns rax, rdx 
lfence
btr eax, 253 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and cx, 0b111 # instrumentation
lfence
btc word ptr [r14 + rax], cx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rsi], 2114064901 
lfence
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
lfence
xor rdi, qword ptr [r14 + rbx] 
lfence
setbe sil 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovo esi, dword ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
setl byte ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
adc dil, byte ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub dword ptr [r14 + rdi], -19 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovbe edi, dword ptr [r14 + rax] 
lfence
test cl, -31 
lfence
mul al 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

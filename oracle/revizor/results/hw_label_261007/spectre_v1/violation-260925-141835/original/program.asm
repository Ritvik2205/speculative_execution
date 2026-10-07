.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -54 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 33 
sub rsi, 121 
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi] 
cmovns rax, rdx 
btr eax, 253 
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx 
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901 
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx] 
setbe sil 
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax] 
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi] 
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx] 
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -19 
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax] 
test cl, -31 
mul al 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
bt di, 236
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
bts rax, 140
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
bt esi, 2
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
or dil, -55
and dl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add cx, di
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 8
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
lea edx, qword ptr [rbx]
bt rcx, rax
lea ebx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

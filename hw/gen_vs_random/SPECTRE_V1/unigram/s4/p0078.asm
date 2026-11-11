.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
and dx, 40
cmovp di, di
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 83
add dl, -65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 81
adc dil, 79
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
imul rdx, rsi, 87
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 47
mul al
cmp ecx, edi
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

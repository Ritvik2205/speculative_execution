.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 54
test dil, 46
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
bts rcx, rdx
cmovnz rsi, rdi
and sil, bl
test al, 127
test al, cl
bt ebx, 23
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rsi
and al, 49
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

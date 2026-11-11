.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
bts rdi, rsi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor dil, -124
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
or al, 30
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
jmp .bb_0.2
.bb_0.2:
test cl, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
btc eax, 40
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
or al, -17
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

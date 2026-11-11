.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 84
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
xor sil, dil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
or si, 94
and al, 35
jmp .bb_0.1
.bb_0.1:
btr ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
test cl, 0
or al, bl
and dl, dl
cmovnp rax, rdx
btc eax, 40
bt di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

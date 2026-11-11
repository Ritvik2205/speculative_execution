.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
xor sil, 94
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
test rax, -708244380
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
btr ax, bx
and dil, -39
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
cmovle ax, dx
lea rax, qword ptr [rdi]
and si, -121
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

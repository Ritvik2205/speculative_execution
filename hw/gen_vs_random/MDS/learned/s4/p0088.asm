.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -39
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and al, al
or bl, -52
xor dl, 40
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 50
jmp .bb_0.2
.bb_0.2:
test al, -7
test dil, -51
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
and al, dl
bt cx, si
test eax, 1838539683
xor cl, 15
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

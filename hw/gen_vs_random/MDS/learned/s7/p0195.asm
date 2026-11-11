.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, cx
or dil, sil
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
btr ax, cx
xor bl, -88
and dil, -62
xor rdi, -9
xor al, cl
jmp .bb_0.1
.bb_0.1:
test al, 127
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
jmp .bb_0.2
.bb_0.2:
xor sil, 110
test dil, dl
test dil, 46
or al, sil
jmp .bb_0.3
.bb_0.3:
test rdx, 79
or si, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

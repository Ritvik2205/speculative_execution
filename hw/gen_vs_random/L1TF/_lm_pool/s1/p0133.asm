.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
test bl, sil
xor rdi, -80
xor cl, bl
xor bl, 38
test sil, 29
xor sil, dl
or bl, -88
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

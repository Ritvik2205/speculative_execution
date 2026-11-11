.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
setp dil
test al, -82
test al, 15
jmp .bb_0.1
.bb_0.1:
add bl, 65 # instrumentation
cmovo rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor sil, 64
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 21
or sil, -44
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

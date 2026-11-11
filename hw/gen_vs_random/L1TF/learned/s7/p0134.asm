.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
lea eax, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
test al, -84
and dl, 59
add al, 56
jmp .bb_0.1
.bb_0.1:
test dl, -37
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
test edi, -1252846009
test al, -81
or al, 30
not bl
test al, cl
or sil, cl
xor rdx, -59
xor al, bl
xor dl, 34
bts edi, 248
xor al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

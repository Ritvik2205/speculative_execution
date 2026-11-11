.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
test sil, 47
test dl, -105
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
lea dx, qword ptr [rcx + rax + 83]
adc dl, -49
cmp bl, dl
or cl, dl
test al, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 19740
or cl, 39
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and al, 49
and rcx, -63
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
not bl
jmp .bb_0.1
.bb_0.1:
test al, dl
or dil, 16
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

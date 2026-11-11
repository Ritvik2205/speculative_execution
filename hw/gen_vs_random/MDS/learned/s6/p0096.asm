.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
test al, sil
or al, 54
and bl, 68
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
or cl, cl
jmp .bb_0.1
.bb_0.1:
or rax, -1523798580
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
xor cl, dl
test sil, dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rbx, rsi
adc bl, cl
and al, cl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 96
and bl, cl
xor cl, al
and al, -68
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

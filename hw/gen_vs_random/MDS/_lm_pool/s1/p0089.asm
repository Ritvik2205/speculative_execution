.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 6
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
not al
test bl, -114
and al, sil
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and sil, -69
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and sil, 89
and edx, -44
test dl, al
cmovnp rbx, rsi
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

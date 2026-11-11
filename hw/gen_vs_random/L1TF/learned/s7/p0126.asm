.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
test eax, 645518295
sub cl, 86
sbb al, sil
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
test rdx, rax
lea rbx, qword ptr [rsi + rbx + 94]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

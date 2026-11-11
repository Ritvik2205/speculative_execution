.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and al, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, dl
or eax, 1276549484
and bl, 87
test al, 34
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
sub al, dl
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
lea rdx, qword ptr [rdi]
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

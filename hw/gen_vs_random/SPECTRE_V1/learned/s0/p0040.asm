.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
sbb edi, 6
sub al, dl
lea rcx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
cmp ax, 7046
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and dx, 40
sbb cl, cl
lea rbx, qword ptr [rcx + rdx]
sbb al, al
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

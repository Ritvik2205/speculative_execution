.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 124
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
mov al, bl
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and al, dil
sub ax, -16648
sub sil, bl
sub di, 12
lea rbx, qword ptr [rsi + rdx + 43294]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

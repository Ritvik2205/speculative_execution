.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, sil
lea di, qword ptr [rdi]
adc ax, 24404
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and al, dl
and cl, 86
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and al, -23
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

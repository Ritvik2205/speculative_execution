.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 96
lea ecx, qword ptr [rsi]
mov al, dil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
sbb rax, 1161375577
sbb dl, sil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
mov dil, dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

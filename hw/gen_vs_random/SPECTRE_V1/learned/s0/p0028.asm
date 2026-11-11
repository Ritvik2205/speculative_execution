.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dil
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
sub dil, -111
sub al, -1
sub bl, sil
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
mov bl, dl
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

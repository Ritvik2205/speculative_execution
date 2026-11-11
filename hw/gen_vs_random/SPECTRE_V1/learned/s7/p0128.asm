.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
test bl, -8
sub al, bl
sub al, sil
and rax, -273199823
and ax, 2806
lea bx, qword ptr [rax + rdi]
sub bl, -6
mov bl, al
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
test ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, di
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
inc rcx
test sil, -31
xor cl, -91
sbb dl, bl
bt esi, 51
xor bl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and sil, -55
sub al, -89
lea si, qword ptr [rax + rbx + 82]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

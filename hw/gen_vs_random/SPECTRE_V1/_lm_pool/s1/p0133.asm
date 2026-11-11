.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
sub al, -66
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 25
bt eax, edi
and bl, bl
bt edi, 121
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rax + rdx + 95]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
adc cx, -30
setz dl
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
xor cx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

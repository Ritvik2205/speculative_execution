.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 17
add rax, -704585563
and al, -23
cmp di, 45
not esi
jmp .bb_0.1
.bb_0.1:
sub cl, -47
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sub rax, -1628299544
cmp al, 77
sub rax, -1628299544
xor bl, al
adc dl, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

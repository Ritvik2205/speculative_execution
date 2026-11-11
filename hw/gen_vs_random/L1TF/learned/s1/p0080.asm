.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rbx + rcx + 56]
add al, -102
xor dl, 64
adc dl, -12
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rdx + 8]
jmp .bb_0.2
.bb_0.2:
add cl, dil
add al, 93
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
jmp .bb_0.4
.bb_0.4:
sub bl, al
xor al, 16
adc dil, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

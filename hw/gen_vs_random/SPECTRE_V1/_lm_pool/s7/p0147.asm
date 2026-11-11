.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
add rax, 913062684
sub rsi, 97
add sil, -68
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
sub dil, sil
add dil, -75
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
lea dx, qword ptr [rax + rbx]
test dil, -116
test al, 40
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
or esi, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

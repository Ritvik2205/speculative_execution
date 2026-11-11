.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 79
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor edi, 115
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
cmp bl, dl
sub dil, bl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
test al, 40
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and al, 33
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

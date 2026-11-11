.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rbx]
or al, -57
mov cl, dl
or al, dl
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc al, dil
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
not dl
jmp .bb_0.3
.bb_0.3:
xor dl, 64
sub dl, -49
and al, dil
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

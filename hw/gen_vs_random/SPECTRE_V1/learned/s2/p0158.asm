.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 11
test dil, -116
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
sub bx, si
cmp al, dl
and al, 33
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -23
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
adc cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 49
or ax, 11821
xor bl, cl
jmp .bb_0.1
.bb_0.1:
test eax, 645518295
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
lea si, qword ptr [rdx + rbx + 16]
lea ebx, qword ptr [rdi]
sub dl, cl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
adc dil, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

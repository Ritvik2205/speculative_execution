.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
add rdi, 111
adc al, -70
or dl, cl
adc ebx, 51
cmp eax, 2
sub dil, cl
test al, -85
sub al, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
add al, dil
and dl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

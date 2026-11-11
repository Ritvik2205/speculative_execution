.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
xor bl, cl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
xor dl, -66
and al, sil
or dl, cl
adc cl, al
sub dl, dil
or sil, dil
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
test eax, 1340292467
cmp al, 114
sbb bl, 121
or sil, cl
cmp cl, bl
adc al, 116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

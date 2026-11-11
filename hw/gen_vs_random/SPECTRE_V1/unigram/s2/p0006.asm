.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
bt rbx, 19
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
lea rdi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 18
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 127 # instrumentation
sets al
not dil
or cl, 97
lea cx, qword ptr [rdx]
imul ebx, eax
lea eax, qword ptr [rsi]
adc sil, sil
or dl, al
test bl, al
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

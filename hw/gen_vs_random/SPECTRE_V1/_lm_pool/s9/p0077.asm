.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
mov sil, dil
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
sub bl, dil
jp .bb_0.2
jmp .exit_0
.bb_0.2:
lea ebx, qword ptr [rcx]
xor dil, cl
adc eax, -655457029
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and bl, sil
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

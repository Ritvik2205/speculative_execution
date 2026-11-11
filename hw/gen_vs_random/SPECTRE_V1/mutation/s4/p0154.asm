.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
add eax, 1938514106
setnz cl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
mov cl, dl
lea ax, qword ptr [rcx + rdi + 34958]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdi, rdi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmp cl, dl
lea ecx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
xor bl, bl
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

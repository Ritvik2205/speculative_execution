.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
adc edx, edx
lea di, qword ptr [rdi + rdi + 8444]
not bl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdi, rdi
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
lea ecx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
xor bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

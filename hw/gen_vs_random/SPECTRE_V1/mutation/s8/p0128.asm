.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
test rsi, -1408527332
sbb eax, -108
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
adc dl, -49
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
add ax, 6656
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
sbb rax, 786640702
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -26 # instrumentation
cmovle rcx, rbx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
adc rsi, 110
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
test bx, cx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
jmp .bb_0.2
.bb_0.2:
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

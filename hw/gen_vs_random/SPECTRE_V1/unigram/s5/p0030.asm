.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, cl
cmp si, -11
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
lea cx, qword ptr [rsi]
and dx, 21
cmovnp rcx, rbx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and bx, -118
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
lea ecx, qword ptr [rcx]
cmp al, 53
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmp sil, sil
or cl, -98
imul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and cl, al
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
test bl, -92
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
adc al, cl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
sbb bl, -88
cmp al, -119
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
or rax, -443578116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

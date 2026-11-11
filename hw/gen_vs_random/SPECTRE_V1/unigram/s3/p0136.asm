.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
test si, bx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], edx
bt ebx, 45
sub si, 32
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
lea rcx, qword ptr [rax]
sub sil, sil
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
test cl, -62
add cl, 83 # instrumentation
setbe al
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

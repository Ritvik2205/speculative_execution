.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 49
cmp dil, dil
lea esi, qword ptr [rsi + rax]
lea bx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
sub dl, -34
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
sub si, 83
add dl, -52 # instrumentation
adc dx, 52
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
adc dx, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

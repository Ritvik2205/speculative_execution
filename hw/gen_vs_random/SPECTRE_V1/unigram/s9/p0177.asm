.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, di
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 31
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, -92
add bl, 39 # instrumentation
cmovo edx, eax
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
sub dl, bl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 27
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
add bl, bl
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

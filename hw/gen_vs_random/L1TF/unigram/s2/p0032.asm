.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 1167476476
sub edx, 2
xor eax, -117
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
sbb al, dil
add cl, 32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
add cl, -117 # instrumentation
lea rdx, qword ptr [rcx]
cmp di, -98
or bl, dl
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
add bl, -93
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

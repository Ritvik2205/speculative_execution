.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
lea esi, qword ptr [rcx]
adc eax, 84
cmovno dx, dx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 55
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rcx]
lea rax, qword ptr [rsi + rdi + 16]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
or rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
or bl, sil
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
xor edx, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

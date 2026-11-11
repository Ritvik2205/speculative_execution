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
adc eax, 21
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
lea ecx, qword ptr [rsi + rbx + 46]
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dl, dl
inc dl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, 32 # instrumentation
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
lea ax, qword ptr [rdx + rax]
and sil, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

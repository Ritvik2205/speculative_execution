.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -42 # instrumentation
lea edx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
lea bx, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 98
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
btc rcx, 30
mov bl, sil
movsx dx, cl
cmp rbx, rax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 24
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
add sil, -123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 95
setle sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

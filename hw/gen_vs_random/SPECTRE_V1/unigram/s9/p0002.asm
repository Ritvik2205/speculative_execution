.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rdx + rdx + 56339]
mul al
cmovbe edx, eax
lea rbx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
cmovnb rdi, rax
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
adc dx, di
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
add cl, cl
dec dl
cmp ebx, -33
add al, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 40
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

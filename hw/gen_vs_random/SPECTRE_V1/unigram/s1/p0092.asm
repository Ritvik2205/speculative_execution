.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
cmovl ecx, ebx
setnp dl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 57
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
imul bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
xchg bl, bl
xor rbx, 89
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
imul ebx, eax
or cx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, -72
xor sil, sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 68
or sil, sil
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and esi, esi
add cl, -51 # instrumentation
cmovl eax, ecx
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test rax, -1638758413
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 86
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 48
add dl, 20 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 78
cmovle edx, ecx
sbb cl, sil
cmovno di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
or ax, 18658
cmp al, al
add dl, 47
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], si
sbb al, sil
inc rdx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setns bl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 11
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
inc cl
sbb cl, 105
cmovz edx, esi
cmovb rcx, rdx
btr rax, 88
adc ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

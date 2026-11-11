.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
or al, -57
or cl, -78
cmovnp di, si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
sbb sil, dl
and bl, dil
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 46
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

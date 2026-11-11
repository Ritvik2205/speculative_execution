.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
cmp eax, 692647572
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rbx, rdi
sub sil, -18
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
test al, 48
jl .bb_0.2
jmp .exit_0
.bb_0.2:
xor cl, sil
cmovle rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

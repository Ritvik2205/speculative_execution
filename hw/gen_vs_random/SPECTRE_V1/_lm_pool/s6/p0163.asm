.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
sbb cl, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
sbb bl, dil
lea di, qword ptr [rdx]
sbb eax, 1332762061
xchg sil, al
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
test dil, -116
or rdx, 92
cmp al, 13
cmovnbe rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

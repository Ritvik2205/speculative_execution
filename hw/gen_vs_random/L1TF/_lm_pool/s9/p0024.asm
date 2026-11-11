.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], 73
jmp .bb_0.1
.bb_0.1:
cmovnp ax, di
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
jmp .bb_0.2
.bb_0.2:
xor bl, 38
cmovnp ax, bx
sbb eax, -403815802
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
xor ax, -16232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 110 # instrumentation
add cl, -22 # instrumentation
cmovnz ecx, ecx
add cl, cl
setnle bl
add bl, 28 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 47
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
cmp dil, dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
btr di, 35
adc esi, esi
and rbx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rbx]
imul eax, edx, 16
sbb esi, 40
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
cmovp di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

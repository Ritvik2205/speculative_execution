.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
test al, bl
or bl, cl
xor dil, -124
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
xor dil, -3
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
bts rax, rdx
xor sil, dil
test eax, 1838539683
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and sil, bl
or rcx, 54
test si, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

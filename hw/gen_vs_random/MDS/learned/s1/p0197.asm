.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, dx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and cl, sil
test rdx, 97
lea edi, qword ptr [rdx]
xor rbx, 89
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor dl, bl
or al, sil
xor rcx, 71
or dil, -78
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
xor dil, 81
xor ax, -5889
xor al, -89
test eax, -675944960
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and bx, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

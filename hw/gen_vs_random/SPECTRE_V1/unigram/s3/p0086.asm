.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
add dx, -103
sbb rax, 342397759
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
imul edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
test sil, -31
cmp dil, -58
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
not rax
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
add al, 24 # instrumentation
lea rax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

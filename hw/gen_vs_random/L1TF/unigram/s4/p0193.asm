.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, rbx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and dl, dl
lea edx, qword ptr [rcx + rcx + 37]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 78
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
xchg esi, ebx
add bl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
sub ax, -3178
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
sbb dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
add rdx, 95
add bl, -95
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
mov dl, dl
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
add dl, dl
or di, 0b1000000000000000 # instrumentation
bsf dx, di
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax, esi, 31
lea rcx, qword ptr [rax + rsi]
movzx ebx, di
xor al, -119
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
add dl, 47
movzx ebx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

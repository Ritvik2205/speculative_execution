.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, sil
and sil, -55
not rdx
and al, 33
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
xor cx, 78
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
mov al, -28
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
cmovle edx, ecx
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
xor cl, 71
add bl, -92 # instrumentation
cmovs si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

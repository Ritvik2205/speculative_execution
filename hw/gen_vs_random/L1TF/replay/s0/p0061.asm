.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
cmovz edi, esi
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 72
jmp .bb_0.1
.bb_0.1:
add dl, 6 # instrumentation
cmovl ecx, edx
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
cmovs dx, bx
xchg edi, esi
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
lea si, qword ptr [rcx + rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], esi
imul rcx
add bl, 113 # instrumentation
setbe sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

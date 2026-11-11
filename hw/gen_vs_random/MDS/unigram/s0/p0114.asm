.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
cmovno bx, bx
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and cl, -6
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 22
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
and bl, 68
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
bts rsi, 221
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

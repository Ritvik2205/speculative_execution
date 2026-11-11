.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 78
and dl, -127 # instrumentation
cmovno esi, eax
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 99
cmovno rcx, rdi
and sil, 57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
and al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
btr bx, 188
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
and bl, 56 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and bl, -120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
test rdx, 58
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and bx, 4
test dl, 27
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
and dil, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
or al, bl
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

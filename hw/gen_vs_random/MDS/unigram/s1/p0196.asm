.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dil
cmovb ax, ax
and al, 93
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
and dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
or eax, -1642752131
and dl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
and cl, -109 # instrumentation
cmovns rax, rax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
cmovno ecx, ebx
jmp .bb_0.1
.bb_0.1:
test bl, 106
xor al, -15
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and cl, -38 # instrumentation
cmovp rcx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rsi
cmovnb ax, di
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not al
cmovnz dx, dx
cmovbe di, si
test al, -59
test bl, 106
and dl, al
and dil, -3 # instrumentation
cmovnb di, si
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
xor edi, -47
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
or bx, di
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and dl, -7
and dl, -1 # instrumentation
cmovnb cx, dx
cmovo rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

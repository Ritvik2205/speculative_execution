.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and edx, 99
cmovs ax, di
cmovo cx, ax
and ax, bx
test ecx, 1044879383
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
cmovs bx, si
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
bt rbx, rdx
or di, -18
cmovb di, ax
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and sil, bl
and cl, cl
and dl, -33 # instrumentation
cmovns rcx, rcx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

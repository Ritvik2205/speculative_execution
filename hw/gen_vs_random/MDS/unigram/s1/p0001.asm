.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs bx, cx
and dil, -26 # instrumentation
cmovnp rsi, rdi
cmovnp dx, si
btc rdx, 138
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and dl, -7
or dl, cl
bt eax, eax
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
or cl, 10
jmp .bb_0.1
.bb_0.1:
bts rcx, 115
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and dl, -1 # instrumentation
cmovnb ax, cx
and cx, dx
test dil, -72
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
and al, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
and cl, -109 # instrumentation
not rbx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 46
bts rax, rax
or al, -8
xor ebx, ebx
or dl, -115
cmovbe ax, ax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 85
or bl, bl
cmovnb di, di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 28
and al, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and dl, -33 # instrumentation
cmovns rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

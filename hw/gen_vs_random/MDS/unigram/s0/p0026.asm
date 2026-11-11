.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 43
cmovnl di, dx
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and al, -56
and al, -56
cmovo di, si
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and dl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
cmovnz di, ax
xor al, -119
cmovnp eax, ebx
cmovno eax, ecx
bts rdi, 83
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 81
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

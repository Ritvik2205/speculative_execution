.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 461212071
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
bts rax, rdx
bts rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
cmovbe ax, bx
or rbx, -77
bt rax, rsi
xor cl, 24
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
cmovns rdx, rbx
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
and bl, 107 # instrumentation
cmovbe di, cx
cmovnz eax, eax
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
and cl, 11 # instrumentation
cmovp eax, ebx
or cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

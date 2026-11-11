.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and rax, -1378371328
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
bts si, 59
and bl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
test cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovnbe ax, bx
bts rax, rax
and al, -56
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
cmovns rsi, rcx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
xor bx, ax
cmovnp ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 73
and cx, 15
and al, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

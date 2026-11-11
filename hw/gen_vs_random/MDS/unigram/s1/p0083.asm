.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
and al, -115 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 79
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
and esi, 98
btc cx, ax
xor al, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
cmovo dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
cmovl ecx, ecx
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

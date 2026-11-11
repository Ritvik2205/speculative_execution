.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rax, rsi
and bl, 84 # instrumentation
cmovbe bx, dx
and bl, 107 # instrumentation
cmovbe ax, cx
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 86
cmovs edx, edx
cmovnz ebx, esi
xor si, 91
and cl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
cmovp ecx, edx
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
or ebx, -15
bt bx, dx
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

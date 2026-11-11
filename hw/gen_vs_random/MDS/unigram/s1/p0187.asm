.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, bx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
or rbx, -124
and dl, -7
bts esi, edi
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 66
xor si, ax
cmovl rbx, rsi
cmovns dx, bx
bt rsi, rdi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
and cl, -63
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 43
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and bl, -104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and dl, -33 # instrumentation
cmovns rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

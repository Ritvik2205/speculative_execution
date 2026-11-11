.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rsi, 99
xor bl, bl
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
cmovnle ebx, eax
and sil, 46 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
cmovns ax, cx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rcx, rcx
and sil, 21 # instrumentation
cmovb bx, si
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 88
and eax, eax
or al, sil
xor bl, al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 28
cmovl rbx, rdi
and dl, 16 # instrumentation
cmovle esi, esi
and al, 20 # instrumentation
cmovp cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdx]
xor cl, al
btr ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

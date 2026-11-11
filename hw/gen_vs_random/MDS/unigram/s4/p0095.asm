.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
cmovns ebx, esi
xor cl, al
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
cmovnp rsi, rbx
and cl, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rdx, 10
cmovo eax, eax
cmovnl rcx, rbx
xor bl, -102
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and eax, esi
or rbx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
xor bl, -61
and dx, 3
cmovnbe rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

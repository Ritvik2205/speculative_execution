.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
cmovns esi, esi
or bl, al
or di, di
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
test rax, 1214712583
btc edx, ebx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
btc edx, 75
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
cmovnle bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

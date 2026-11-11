.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt esi, ebx
bts si, 158
xor cl, dl
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
test bx, dx
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
xor eax, edx
and al, 34 # instrumentation
cmovno eax, ebx
and al, 68 # instrumentation
cmovns si, ax
bts rsi, rdi
bts edx, edx
test edx, -1561252782
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
xor ecx, edx
cmovns rdx, rdx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 49
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
cmovnb edx, edi
and cl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

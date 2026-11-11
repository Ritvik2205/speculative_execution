.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and cl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or rax, 1749358813
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
or sil, sil
cmovnl ebx, esi
bt rbx, rsi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
cmovnle edi, eax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 35
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
test dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
xor al, -28
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

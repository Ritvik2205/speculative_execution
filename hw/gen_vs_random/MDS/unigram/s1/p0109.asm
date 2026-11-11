.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
cmovnz rax, rdi
and al, -55
cmovbe ebx, edx
and bl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
cmovnp rax, rcx
xor sil, 94
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
or dl, sil
bt cx, dx
or si, 0b1000000000000000 # instrumentation
bsf cx, si
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
and cl, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dil
cmovnle ecx, ebx
cmovs eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
bt edx, 75
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
xor ebx, 70
and bl, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
bt ecx, ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
and dl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
bts ax, dx
test sil, al
bt esi, esi
bt eax, 31
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
and dl, -33 # instrumentation
cmovns rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

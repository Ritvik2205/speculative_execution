.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 120 # instrumentation
cmovnz esi, eax
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
test rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
xor bl, -61
xor bl, al
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
xor dl, -59
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
test eax, 158941032
test eax, ebx
xor di, -83
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
or ax, -7150
cmovnp rsi, rbx
or rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and al, 17 # instrumentation
cmovnp esi, edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and cl, -103 # instrumentation
cmovns ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

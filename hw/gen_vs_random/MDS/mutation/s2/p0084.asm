.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rsi, rbx
and dl, 120 # instrumentation
cmovnz esi, eax
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
xor di, -83
or rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
test rax, rdi
xor bl, al
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
xor dl, 34
test eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
xor bl, -88
or ax, -4210
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
test eax, 158941032
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

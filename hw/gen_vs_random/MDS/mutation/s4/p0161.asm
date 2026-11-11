.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 424329527
test rax, rdi
xor bl, al
or ax, 85
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
and dl, 120 # instrumentation
cmovnz esi, eax
xor bl, 67
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
test eax, ebx
or rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
xor dl, -43
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
xor di, 40
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
cmovnp rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
cmovb rcx, rax
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
cmovnb rbx, rsi
xor sil, -126
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 59
jmp .bb_0.1
.bb_0.1:
or dil, 16
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
cmovnp rdi, rdx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
not al
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and sil, sil
btr rax, rdx
btr si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

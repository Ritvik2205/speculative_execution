.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
cmovnp rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
btc ecx, eax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
or sil, dl
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovnp rsi, rdx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], esi
and cx, -2
test sil, 41
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 38
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
or si, si
cmovp edx, ebx
btc rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

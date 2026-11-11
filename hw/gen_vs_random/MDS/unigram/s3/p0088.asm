.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
xor rcx, 71
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
test dl, -85
xor cl, 83
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and cx, bx
or al, dl
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 97
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and cl, 122 # instrumentation
cmovl ecx, ecx
and rdx, rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
and dil, dil
and cl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and bl, 120 # instrumentation
cmovnle esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

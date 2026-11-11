.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 94
and dx, 60
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
btc ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and dl, 49 # instrumentation
cmovp rbx, rdx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovnbe rax, rdi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and cl, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and dl, 93 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
bt rbx, 241
cmovnl esi, eax
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edx
cmovnle rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rsi, 88
cmovnle esi, edi
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

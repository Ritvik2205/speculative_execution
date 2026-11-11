.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
bts rax, 77
test bl, sil
or bl, 100
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and di, ax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
cmovno rax, rdx
and ebx, esi
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test si, 95
cmovnb rcx, rcx
and rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

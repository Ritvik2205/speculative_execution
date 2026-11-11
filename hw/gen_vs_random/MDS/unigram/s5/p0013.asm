.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
cmovns ebx, ebx
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edx
and ecx, eax
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 63
not sil
xor sil, sil
and al, 42 # instrumentation
cmovz ebx, ecx
cmovs eax, ebx
and rcx, rdi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
test dil, sil
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
bt ebx, ecx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
test rcx, rdx
and bx, dx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 55
and bl, 3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

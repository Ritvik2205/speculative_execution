.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
test eax, 158941032
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and bl, 38 # instrumentation
cmovno rdi, rdx
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
test si, 52
and ebx, 4
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

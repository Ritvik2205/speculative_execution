.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
cmovz si, ax
and dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and al, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
xor sil, al
jmp .bb_0.1
.bb_0.1:
and cl, 7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
or sil, bl
xor rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
xor rax, -270810088
cmovbe ecx, ecx
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
cmovbe esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

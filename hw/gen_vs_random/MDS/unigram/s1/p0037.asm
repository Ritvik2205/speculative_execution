.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33 # instrumentation
cmovnle edi, ebx
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
cmovb edi, edx
bts bx, dx
and rcx, 25
bt rsi, 90
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
test ebx, 245771113
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and dl, -26 # instrumentation
cmovnp rax, rdx
xor dl, -125
xor sil, 54
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

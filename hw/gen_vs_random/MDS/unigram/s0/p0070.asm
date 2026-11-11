.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
cmovo rcx, rcx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
cmovbe esi, edi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and eax, 454700988
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 69
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
bt esi, 3
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
xor dl, -59
or sil, -49
and al, -15 # instrumentation
cmovnp ax, ax
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

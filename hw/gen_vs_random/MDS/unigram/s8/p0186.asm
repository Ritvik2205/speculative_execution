.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and al, 67 # instrumentation
cmovl rax, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor ax, cx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
bt edi, ebx
and dl, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
xor rdx, -59
cmovz rbx, rbx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 48
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
bts rax, 77
and sil, -24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and dil, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

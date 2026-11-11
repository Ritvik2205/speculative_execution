.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rax
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 53
xor cx, 65
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
or eax, -1642752131
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or rax, -2043376621
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor ax, 2053
xor edi, 74
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
sbb eax, eax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
and sil, -94
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
cmovo dx, ax
cmovnle rsi, rcx
cmovns eax, ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

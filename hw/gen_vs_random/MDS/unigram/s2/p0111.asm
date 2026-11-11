.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, 29
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
xor rbx, 89
and dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
cmovb ax, ax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
btr edi, 221
and al, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rcx, -63
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 65
test dil, sil
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
cmovnl eax, eax
test cl, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

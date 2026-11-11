.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rcx
and cl, -44 # instrumentation
cmovno rcx, rdx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
and dl, 48 # instrumentation
cmovz rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rax]
bt rdx, 88
or al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 12
or rax, -1561934807
cmovno rcx, rsi
or bl, 100
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

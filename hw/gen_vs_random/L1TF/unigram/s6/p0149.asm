.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul sil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 22
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ecx
xor edx, 5
sbb sil, -19
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 12
jmp .bb_0.1
.bb_0.1:
movzx edx, al
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
dec bl
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

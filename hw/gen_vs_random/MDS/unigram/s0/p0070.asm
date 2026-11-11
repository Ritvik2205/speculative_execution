.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
cmovnbe edi, ecx
test al, al
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or di, 0b1000000000000000 # instrumentation
bsr bx, di
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 24
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
bt rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
or esi, -110
xor cl, -13
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
test sil, -55
bts dx, 50
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 6
xor bl, -102
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

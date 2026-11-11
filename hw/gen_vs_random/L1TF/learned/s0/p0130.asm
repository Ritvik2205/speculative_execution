.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 9
sub bl, dil
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
xor dl, al
jmp .bb_0.1
.bb_0.1:
test dil, -126
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
btc cx, di
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test sil, 29
sub dl, -34
btc bx, cx
jmp .bb_0.2
.bb_0.2:
and dl, 59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
xor cl, al
and rax, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

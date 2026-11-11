.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
or rax, 52
test dil, bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
test sil, 17
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
jmp .bb_0.3
.bb_0.3:
or dl, cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
bt dx, bx
btc di, 164
test rax, -708244380
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

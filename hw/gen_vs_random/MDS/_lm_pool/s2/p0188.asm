.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
or di, 42
xor rax, -345061362
or al, dil
and cl, cl
and al, -54
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
test cl, 62
or al, -24
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
test eax, -409834435
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

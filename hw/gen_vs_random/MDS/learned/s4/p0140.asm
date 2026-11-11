.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
bts ebx, 205
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor bl, -27
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
xor al, 34
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
or dil, sil
and dl, sil
or al, 54
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
or rax, 1461812833
test al, sil
jmp .bb_0.2
.bb_0.2:
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

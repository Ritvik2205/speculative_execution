.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 79
bts rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
test sil, bl
bts rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor dl, -43
jmp .bb_0.1
.bb_0.1:
test rdx, rax
and sil, -56
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or al, bl
or al, 25
xor dl, cl
test rax, -359674714
xor dil, 124
xor dil, -70
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

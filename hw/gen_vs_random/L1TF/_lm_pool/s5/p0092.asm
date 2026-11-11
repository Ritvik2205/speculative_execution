.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 88
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 22
test esi, 58
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 31
and bl, dl
lea edi, qword ptr [rcx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and cl, al
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

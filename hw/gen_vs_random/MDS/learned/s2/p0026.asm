.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -3
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor sil, -15
test al, 127
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
or dil, bl
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and eax, -829294476
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

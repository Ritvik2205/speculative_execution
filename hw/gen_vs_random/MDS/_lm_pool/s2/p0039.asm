.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and bl, al
xor bl, sil
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
xor cl, 15
xor dl, sil
jmp .bb_0.1
.bb_0.1:
or eax, edx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test al, bl
and dil, bl
xor al, 9
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
test cl, -18
and rax, -978188247
xor sil, bl
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

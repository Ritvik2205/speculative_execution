.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
test bl, sil
jmp .bb_0.1
.bb_0.1:
xor al, 122
or al, al
test eax, 1287331633
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and sil, -69
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
xor rdi, -9
xor dl, dil
xor cl, al
and dx, 3
or bl, -52
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

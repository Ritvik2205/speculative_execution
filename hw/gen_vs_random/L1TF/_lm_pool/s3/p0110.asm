.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
and bl, dil
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
test sil, dil
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
xor bl, -5
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
or sil, -44
add eax, -1
cmp si, 47
jmp .bb_0.2
.bb_0.2:
dec cl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

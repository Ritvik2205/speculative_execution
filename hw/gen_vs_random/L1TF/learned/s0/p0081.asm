.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
xor ecx, 4
test al, -32
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
add rax, 909978580
xor cl, bl
jmp .bb_0.1
.bb_0.1:
test bx, 97
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

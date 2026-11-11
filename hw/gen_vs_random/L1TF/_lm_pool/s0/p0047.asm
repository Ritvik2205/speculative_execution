.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
or dl, -67
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rsi, 63
or rbx, 18
and bl, dl
jmp .bb_0.1
.bb_0.1:
test rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
lea bx, qword ptr [rdi + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 16
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

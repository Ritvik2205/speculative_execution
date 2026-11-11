.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor edi, 115
cmp eax, -240917296
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, bl
mov bl, dl
lea esi, qword ptr [rdx]
test sil, -31
add al, bl
lea di, qword ptr [rsi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 27
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
sub bl, al
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or cl, dl
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test sil, al
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
cmovb di, si
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
test sil, 29
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
or cl, dl
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
cmp di, -78
sub rsi, 56
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
xor di, 97
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

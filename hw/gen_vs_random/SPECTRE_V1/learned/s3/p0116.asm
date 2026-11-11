.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 97
add al, -44
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 37
jmp .bb_0.1
.bb_0.1:
xchg al, cl
and dl, sil
or al, 19
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 62
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

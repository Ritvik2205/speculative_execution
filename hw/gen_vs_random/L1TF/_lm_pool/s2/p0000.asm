.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 32
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
xor rdi, -80
and sil, -90
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
sbb dl, -26
cmp al, -119
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
test rax, rsi
test al, -104
add dl, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edx, 26
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
adc bl, 86
add al, -84 # instrumentation
setno cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
add ecx, 94
imul rdi, rdi
xor dl, dl
setns cl
cwde
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

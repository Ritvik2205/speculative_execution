.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 21 # instrumentation
adc di, 46
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea rbx, qword ptr [rax + rdi]
jmp .bb_0.1
.bb_0.1:
imul rbx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
sbb bl, dl
xor al, dil
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
cmp dl, -56
sbb dil, sil
cmp si, 1
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

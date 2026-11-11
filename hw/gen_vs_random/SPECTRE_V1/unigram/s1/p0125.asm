.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
xor dl, bl
sbb eax, ecx
adc cl, cl
and dl, bl
imul al
adc dil, al
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 6
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
bts rcx, 76
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, bl
lea rdx, qword ptr [rax + rdx]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 57
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

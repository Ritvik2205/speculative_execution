.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -23
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and cl, -101
and al, 59
cmp dl, al
add sil, bl
sub sil, -35
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
cmp dl, 95
xor al, -15
add dl, al
dec al
xor al, -15
cmp al, 105
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or rax, -823069511
sub di, 9
add dl, cl
add bl, dl
adc dil, cl
add dl, dil
xor sil, 67
adc cl, dl
movzx edi, bx
movsx si, al
cmovno dx, si
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

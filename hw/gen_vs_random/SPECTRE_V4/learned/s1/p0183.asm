.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
dec dl
add al, sil
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
sbb dl, -62
or bl, -80
add ax, 6414
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
sub bl, dl
sbb cl, -69
or al, 27
adc cl, dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
cmp dil, -92
and dil, -61
xor cl, -101
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and al, dl
or al, sil
and di, -65
sub bx, 24
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add dil, 105
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
cmp al, 114
mov dil, dl
add cl, sil
sub al, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

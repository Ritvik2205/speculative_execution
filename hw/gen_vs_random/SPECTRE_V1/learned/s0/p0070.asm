.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rsi + 18]
not al
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
sbb ax, -206
and ecx, ebx
lea rsi, qword ptr [rbx + rdx]
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
cmp sil, sil
bts bx, 4
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add cl, -36
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
xor dl, sil
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

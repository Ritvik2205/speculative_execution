.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt si, ax
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
cmp dil, 33
lea si, qword ptr [rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
movzx rdx, sil
cmovnz eax, esi
xor sil, 87
jmp .bb_0.1
.bb_0.1:
not dl
adc eax, -1211718481
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
cmovb ax, di
movzx rsi, al
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
setnl cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

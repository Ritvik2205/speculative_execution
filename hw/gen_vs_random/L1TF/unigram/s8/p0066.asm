.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
sbb rsi, 83
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
sbb dx, 96
movzx rax, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
add al, -84 # instrumentation
setno al
jmp .bb_0.1
.bb_0.1:
add dil, dil
adc bl, -14
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
xor cl, al
adc edx, 50
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
imul ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

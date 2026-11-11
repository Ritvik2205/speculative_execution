.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rsi + rsi + 27]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 85
sbb di, 80
and dl, -49
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
setz al
cwde
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
btr edx, ebx
bts rsi, rdi
cmovnz si, bx
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
add cl, -41 # instrumentation
adc dx, ax
adc sil, 98
xor al, bl
imul cx, di, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

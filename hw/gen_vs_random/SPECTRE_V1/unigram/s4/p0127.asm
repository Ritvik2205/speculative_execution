.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 19 # instrumentation
setnz sil
lea rdx, qword ptr [rdx + rdi]
test cx, dx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
cmovno esi, eax
imul al
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], eax
lea rax, qword ptr [rdi + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, -32
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
dec rax
cmovnbe cx, di
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

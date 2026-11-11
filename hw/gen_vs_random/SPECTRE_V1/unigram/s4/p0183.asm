.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto dl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
mul al
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
sbb ecx, 58
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
lea eax, qword ptr [rcx + rdi]
imul al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdx]
cwd
and al, sil
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

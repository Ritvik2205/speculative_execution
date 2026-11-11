.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
test bl, 52
dec al
lea eax, qword ptr [rbx + rcx + 60]
setns sil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub rcx, 22
adc dl, sil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
lea ecx, qword ptr [rbx + rcx + 77]
add al, 99 # instrumentation
sets al
add cl, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
add dil, 27
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

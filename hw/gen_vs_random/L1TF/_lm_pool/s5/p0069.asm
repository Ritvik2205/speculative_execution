.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, di
sbb cx, 55
xor dil, al
and rdx, 88
cmp al, 27
add dl, -70
jmp .bb_0.1
.bb_0.1:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
jmp .bb_0.3
.bb_0.3:
test al, -104
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

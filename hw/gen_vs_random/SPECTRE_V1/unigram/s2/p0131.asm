.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -100
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
cmovnz di, di
add cl, -96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
add dl, 71 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
lea ax, qword ptr [rdx + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and al, -54
sbb bl, 79
test rax, rbx
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 18
and cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
lea eax, qword ptr [rax + rdi]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or dx, dx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
cmp dil, sil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
test cl, -120
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
test dil, -116
cmp al, sil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 19
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

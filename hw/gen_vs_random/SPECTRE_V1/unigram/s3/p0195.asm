.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdi]
neg eax
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
test rbx, 40
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

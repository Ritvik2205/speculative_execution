.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
setnp dl
test al, -75
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
sub al, cl
lea bx, qword ptr [rdx + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
mov al, -28
xor edx, eax
add al, -46 # instrumentation
cmovbe rax, rbx
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
cmovbe ebx, esi
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

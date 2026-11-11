.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
test al, 42
setnp dl
sub al, cl
lea bx, qword ptr [rdx + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -46 # instrumentation
cmovbe rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
cmovbe ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
xor edx, eax
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
mov al, -28
cbw
jmp .bb_0.2
.bb_0.2:
xor cl, 71
sub eax, -911655926
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
imul eax
test eax, 133988823
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

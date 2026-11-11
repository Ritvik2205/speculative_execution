.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
movzx ecx, si
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
and ax, 21910
lea rcx, qword ptr [rax + rdi]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
lea rbx, qword ptr [rdx + rax + 53]
add al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 33
sbb ecx, 88
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

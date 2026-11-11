.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle al
add bl, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
cmovl ecx, eax
cmovp rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 86
sbb sil, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
adc al, -6
xor dx, cx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
sbb dil, 100
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
sbb cx, 24
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

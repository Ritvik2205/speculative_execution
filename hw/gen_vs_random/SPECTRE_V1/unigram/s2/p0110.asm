.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
lea dx, qword ptr [rax + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
add edx, 27
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 16
btr rax, rcx
movsx rcx, al
cmovnl ecx, edx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bt ax, 12
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
sbb sil, 126
inc dil
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
sbb di, 72
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovl eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

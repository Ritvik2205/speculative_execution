.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 86
adc dl, -12
xchg dl, dil
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
or dl, dil
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
cmovz rbx, rcx
xor si, -50
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

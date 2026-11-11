.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
test bx, di
dec al
mul al
cmovnb rax, rcx
xchg bl, bl
add cl, -23 # instrumentation
cmovl dx, ax
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -120
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -101
xor ecx, 54
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
xor ecx, 89
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

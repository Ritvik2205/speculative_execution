.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
lea rcx, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 80
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg al, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
add al, -65
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

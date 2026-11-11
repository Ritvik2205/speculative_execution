.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
test al, 48
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb dl, cl
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
add sil, -68
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
bt ecx, 204
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

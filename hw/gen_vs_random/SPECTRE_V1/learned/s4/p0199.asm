.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, ax
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
test dl, -105
adc di, 66
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and al, 33
and al, dil
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
xchg sil, cl
setz cl
and bx, -118
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rbx + rax + 26]
mul cl
lea si, qword ptr [rcx + rcx + 40728]
lea dx, qword ptr [rax + rdi + 79]
add dl, 47
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
lea dx, qword ptr [rcx + rsi]
xchg rdi, rax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, bl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
bt rcx, rsi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

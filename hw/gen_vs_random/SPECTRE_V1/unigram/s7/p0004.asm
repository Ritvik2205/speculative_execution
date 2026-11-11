.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not cx
setp bl
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
lea edx, qword ptr [rdx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, cx
bt eax, 78
lea rax, qword ptr [rcx + rsi + 3]
setnle bl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
add dl, 110 # instrumentation
cmovb rsi, rdx
add sil, 87 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
cmp dl, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

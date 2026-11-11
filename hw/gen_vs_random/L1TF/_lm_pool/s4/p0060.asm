.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
lea eax, qword ptr [rcx + rcx + 52039]
xor al, 45
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jmp .bb_0.4
.bb_0.4:
xor cl, dil
jmp .bb_0.5
.bb_0.5:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

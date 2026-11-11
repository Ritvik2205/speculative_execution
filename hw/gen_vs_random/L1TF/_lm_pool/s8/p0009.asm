.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
sbb eax, -1165635662
and dl, -49
cmp rsi, 21
cmp sil, -11
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add dil, 88
mov bl, al
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
or dil, bl
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

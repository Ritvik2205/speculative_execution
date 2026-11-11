.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
lea ecx, qword ptr [rdx]
cmp cl, dil
lea rdi, qword ptr [rcx + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sbb eax, -1165635662
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
setno cl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

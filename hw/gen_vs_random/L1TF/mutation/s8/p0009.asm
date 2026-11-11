.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edi, eax
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
lea edx, qword ptr [rcx + rdi]
add bl, -37 # instrumentation
dec cl
not dil
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
setnz dil
and ax, 7954
jmp .bb_0.1
.bb_0.1:
add cl, 42 # instrumentation
lea esi, qword ptr [rcx + rsi]
cmovnp si, ax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
add bl, bl
add cl, -103 # instrumentation
cmovnz cx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
imul rdx, rdx
lea ax, qword ptr [rdx + rbx + 50836]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

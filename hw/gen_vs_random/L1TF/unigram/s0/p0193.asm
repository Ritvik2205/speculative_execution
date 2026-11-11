.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not cl
not di
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
setnbe dil
cmovo si, bx
cmovp ebx, eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add bl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
setnp al
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 47
jmp .bb_0.1
.bb_0.1:
not sil
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdi
imul ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

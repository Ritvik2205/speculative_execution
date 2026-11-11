.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
neg si
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
mov ecx, 18
add cl, -23 # instrumentation
cmovl cx, ax
add sil, 110 # instrumentation
cmovb rcx, rsi
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
add bx, dx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and bx, -118
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
setle sil
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
or rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

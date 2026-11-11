.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
lea rdx, qword ptr [rdi + rdi + 73]
adc cl, dl
add al, al
xchg dil, bl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
lea dx, qword ptr [rcx + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
add di, 44
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -15 # instrumentation
movzx bx, dil
cdq
add al, 126 # instrumentation
cmovnl cx, ax
add sil, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
btr rax, rdi
add dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, bx
cmp rdi, 90
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
sub cl, al
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
sbb cl, 105
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdi]
lea rcx, qword ptr [rax + rax + 57]
cmovb di, cx
mov cl, al
mov al, sil
setnp dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

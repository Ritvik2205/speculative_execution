.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, -31
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -125 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 84
cmp cl, al
test cl, sil
adc dx, cx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
add sil, dl
adc di, dx
adc bl, 88
cmovnl edi, ecx
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
test bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

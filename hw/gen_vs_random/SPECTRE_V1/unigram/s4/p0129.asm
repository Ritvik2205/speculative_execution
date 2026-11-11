.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
xor bl, sil
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rbx + rcx + 39]
and cl, 86
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
add dl, sil
cmp al, bl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rbx]
cmp bx, 27
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
add al, 120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

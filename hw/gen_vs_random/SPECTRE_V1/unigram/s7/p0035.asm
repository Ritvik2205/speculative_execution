.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -94 # instrumentation
cmovnle rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -100
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
sub cx, 11
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
or dl, 41
xchg cl, sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
add dl, -89 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 74
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
inc rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

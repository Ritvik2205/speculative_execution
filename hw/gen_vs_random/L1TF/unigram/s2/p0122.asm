.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, 88
movsx bx, sil
or sil, -5
cmovb dx, si
cmovnbe cx, cx
cmp al, 10
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
btc rbx, 89
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
xor dil, al
jmp .bb_0.1
.bb_0.1:
setnb dl
lea ebx, qword ptr [rsi]
xchg cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

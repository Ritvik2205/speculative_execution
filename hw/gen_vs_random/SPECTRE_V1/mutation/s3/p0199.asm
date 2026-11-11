.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe si, si
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
mov bl, 59
and ax, -21522
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
btc dx, 69
sub bl, al
add al, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
lea edx, qword ptr [rax]
cmp dl, cl
setnz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

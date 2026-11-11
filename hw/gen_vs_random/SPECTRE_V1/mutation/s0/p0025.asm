.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe si, si
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
mov bl, 59
and ax, -21522
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rax]
add al, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
setnz bl
sub bl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
cmp dl, cl
btc dx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

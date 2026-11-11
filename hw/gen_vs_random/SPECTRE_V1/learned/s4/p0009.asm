.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
bts rax, 140
and al, -119
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
cmp ebx, 96
dec rcx
cbw
xchg rdi, rdi
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, 105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 7
neg rsi
lea ebx, qword ptr [rcx]
lea bx, qword ptr [rdi + rbx]
dec bl
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
add cl, -117 # instrumentation
cmovs rbx, rsi
btc cx, 88
setno al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

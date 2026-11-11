.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
dec di
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
and bx, -118
add dl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
add al, -47 # instrumentation
setbe al
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 4
sbb dl, sil
add rax, -845342150
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
sub al, dil
bts dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

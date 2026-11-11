.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
add dl, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
inc ebx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
mov cx, 60
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
adc di, 80
jmp .bb_0.1
.bb_0.1:
cdq
imul al
btc bx, di
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
add bl, 111 # instrumentation
cmovs rsi, rsi
setb cl
lea di, qword ptr [rdx + rax]
dec dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -800407
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
btr bx, di
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
movsx ecx, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
not cl
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
btc ebx, ecx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 38
lea dx, qword ptr [rcx + rsi + 29]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

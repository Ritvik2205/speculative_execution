.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
or bl, 6
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
add di, 43
xor di, 4
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
bt rsi, rdi
test al, 70
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, di
test cl, dl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 63
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
test eax, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

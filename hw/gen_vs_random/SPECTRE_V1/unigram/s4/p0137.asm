.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 98
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 80
lea rsi, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
and rbx, 66
sbb dl, 127
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
imul al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 100
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb ax, bx
add cl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
bt rdx, rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

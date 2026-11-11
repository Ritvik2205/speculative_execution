.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rbx, rsi
btr ebx, edi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 13
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 78
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 89
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
cmovb ax, di
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
add dil, al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
mov dil, bl
and esi, ebx
add bl, -77 # instrumentation
cmovns ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
btc ecx, 36
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
cmovl eax, esi
test rdx, 80
sub dl, -29
sbb sil, 126
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 57
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ebx
xor dl, 12
setnle bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
mov rsi, 8418490294875847673
add cl, 22 # instrumentation
cmovns rdi, rsi
test cx, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

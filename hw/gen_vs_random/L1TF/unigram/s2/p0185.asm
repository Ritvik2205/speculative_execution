.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 58
test rax, rbx
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
add bl, 12 # instrumentation
lea rax, qword ptr [rdx + rbx]
or rax, 699028911
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rax
adc edi, 117
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
cmp cx, 68
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
bts edx, 80
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, dx
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 19
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
add bl, 37 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 46
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 1
bts rcx, rbx
neg cl
cmovnb ecx, edx
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
add cl, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
cmp cx, 96
setnp dil
add dl, 10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

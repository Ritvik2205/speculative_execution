.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
setnp cl
xor cx, -79
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 46
adc rcx, 58
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
setnz dil
nop
test cl, 93
adc bl, cl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 2
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

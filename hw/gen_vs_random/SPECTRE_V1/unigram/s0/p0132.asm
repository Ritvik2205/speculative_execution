.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
dec cl
setnp cl
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
btr eax, 253
setns dil
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
mul dil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 76
movsx bx, dl
or cl, cl
cmovl edx, edi
adc bl, 70
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, -1265007362
cmovnz rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 86
add bl, -107 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
cmovnp bx, cx
or sil, al
test dil, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 78
setns dil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
not al
adc al, 63
lea rsi, qword ptr [rdx + rcx + 94]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
add cl, 29 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 40
cmovnp cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

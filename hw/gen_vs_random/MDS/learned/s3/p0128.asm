.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
sbb sil, bl
cmovs ax, cx
or eax, -1642752131
or dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
cmovb si, cx
jmp .bb_0.1
.bb_0.1:
btc bx, 179
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 69
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
or al, -8
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
or dl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

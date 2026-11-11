.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ebx
cmp al, al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
xor edx, 101
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 79
or dil, -28
xchg dl, cl
sbb dx, 88
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 99
sbb al, al
add al, -3 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
xor dil, 2
cmp sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

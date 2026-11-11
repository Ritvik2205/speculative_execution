.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
adc dil, dil
lea rax, qword ptr [rsi]
xchg di, si
lea si, qword ptr [rdx + rax + 57]
mov esi, ebx
test ebx, 92
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 39
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 16
movsx esi, sil
dec rsi
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

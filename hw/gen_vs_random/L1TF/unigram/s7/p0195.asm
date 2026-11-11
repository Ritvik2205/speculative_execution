.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
mov cx, ax
setnle sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 58
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
or eax, 287965578
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 6
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
test cx, cx
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
cmovnb edx, eax
add cl, cl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
sbb rax, rax
sbb bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

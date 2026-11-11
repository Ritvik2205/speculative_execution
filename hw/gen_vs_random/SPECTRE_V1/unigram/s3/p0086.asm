.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 0 # instrumentation
adc al, cl
adc di, 48
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
bts cx, bx
cmovnle ax, cx
xchg sil, cl
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 77
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
add al, -76 # instrumentation
cmovnbe ax, ax
add ax, 6656
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
sbb di, -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

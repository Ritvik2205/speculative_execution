.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, sil
add al, -113 # instrumentation
mov rsi, 29
sub ebx, ebx
add dl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
lea ax, qword ptr [rdx + rdi + 99]
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rsi]
add al, -33 # instrumentation
cmovnl di, dx
neg rdx
add ebx, 2
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
cmovnle bx, bx
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
adc cx, bx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

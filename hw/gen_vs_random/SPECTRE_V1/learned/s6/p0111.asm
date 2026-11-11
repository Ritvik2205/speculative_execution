.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
sub al, -82
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
xchg al, bl
sub dl, al
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
not ax
cmp cl, 20
mov dil, bl
mov bl, al
bts dx, 26
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ebx
btr rcx, 43
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 35
cmp ecx, 40
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rsi], bx
jmp .bb_0.1
.bb_0.1:
sub dl, 105
add dil, -71 # instrumentation
adc edi, edi
adc cl, al
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
lea rdx, qword ptr [rbx + rax + 14]
or cl, -78
sub al, -3
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

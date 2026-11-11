.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 115 # instrumentation
setz dl
test sil, 29
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], bx
cmovl ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 41
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and al, -68
jmp .bb_0.1
.bb_0.1:
and bl, 89
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx], 23
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
sub al, -47
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
adc ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

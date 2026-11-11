.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
xor cl, -73
cmp cl, sil
adc edx, -125
dec bl
sub bl, cl
adc dl, 73
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
sub dl, 107
sub al, dl
add bl, dil
sub bl, 66
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
or al, 27
xor al, 48
add al, -99
xchg bl, cl
and dil, -23
sub edi, 92
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
sub bl, al
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
xchg esi, ebx
neg al
adc al, -59
and dil, al
cmp cl, dil
and al, -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

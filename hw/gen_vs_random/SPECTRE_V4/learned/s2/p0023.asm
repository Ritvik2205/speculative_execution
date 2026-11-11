.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -55
cmovno si, bx
sbb cl, 12
and cx, -117
inc dil
jmp .bb_0.1
.bb_0.1:
cmp al, 75
xor al, 99
xor ax, -17712
sbb sil, -11
add dl, al
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
sub bl, dl
cmp al, dil
mov cl, al
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
sub cl, sil
and cl, bl
adc al, bl
adc sil, bl
and bl, sil
cmp al, 75
xor cl, -15
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
btc rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

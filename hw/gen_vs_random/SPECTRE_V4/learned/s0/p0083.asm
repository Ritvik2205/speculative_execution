.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
xor bl, al
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
adc dl, 5
cmp cl, 100
xor bl, 126
add dl, cl
or dil, dil
test dl, 114
dec bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
or dl, -26
or rax, 185991441
btc rbx, rcx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
cmp rax, -1070057082
add dil, bl
adc dl, 32
or al, -90
cmp cl, -105
add bl, -38
sbb dil, 8
and cx, -117
xchg ax, si
sub cl, bl
and dil, al
add dl, -82
dec al
and cl, 126
cmp sil, -100
test ecx, -1293796332
and dil, bl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
sub sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

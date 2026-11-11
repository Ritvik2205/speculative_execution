.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -81
adc rax, 1690546225
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
sbb al, -14
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or cl, cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
adc al, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
sbb sil, -124
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
or al, bl
imul di, cx, 9
bts ecx, 0
sub cl, bl
jmp .bb_0.1
.bb_0.1:
or cx, -74
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
test dil, -5
sub dil, -40
cmp dil, 101
xor al, bl
add bl, bl
and cl, 126
or dl, cl
add al, cl
cmp dl, 23
sub cl, bl
add bl, cl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

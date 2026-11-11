.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, ecx
cmp dl, sil
or cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
xor di, bx
test dl, 114
cmp dl, al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
xor dil, al
sub dl, -16
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
xor ax, -29507
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
cmp al, 105
or rbx, 69
imul rdi, rsi
cmp rcx, -121
adc al, -117
test eax, -251558852
adc cl, dil
xor dl, cl
sub rcx, 126
jmp .bb_0.1
.bb_0.1:
test al, 72
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
add dl, bl
or dl, cl
cmp dl, cl
and rbx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rbx]
movsx cx, bl
mov dil, al
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

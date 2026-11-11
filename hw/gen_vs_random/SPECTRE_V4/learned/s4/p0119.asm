.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -197
and cl, dl
cmp cl, -80
cmp rdx, -49
add dl, dil
xor cl, -73
test bl, -91
test eax, -251558852
jmp .bb_0.1
.bb_0.1:
dec bl
sub cl, dil
adc dl, cl
and bl, al
xor dx, -43
test dl, -81
adc al, dl
xor rax, 1049851782
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
cmp al, 116
test ecx, 860867711
and sil, -84
cmp al, 98
add cl, -62
cmp bl, 12
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
add al, -112
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
add dil, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

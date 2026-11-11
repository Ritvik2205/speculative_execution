.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
cmp edi, 3
or al, -50
cmp dl, -82
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
adc cl, 111
add dl, 109
sub dil, 65
adc al, cl
xchg rsi, rcx
adc cl, dl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
xor rax, 93
xor cl, -73
xor rsi, -102
xor eax, 167244411
imul cx, bx
and sil, -84
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and al, dil
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

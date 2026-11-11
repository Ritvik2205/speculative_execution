.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
test di, -19523
cmp dil, al
and dl, 126
sub dil, al
and al, cl
test dl, -102
test al, -26
movsx ax, cl
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
and ax, -6897
adc cl, dl
xor ax, 20236
cmp sil, dil
mov sil, bl
adc dil, al
cmp rsi, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

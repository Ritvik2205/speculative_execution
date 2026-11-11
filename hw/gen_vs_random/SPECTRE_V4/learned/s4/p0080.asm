.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 7
adc edx, -86
dec bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
and dl, dl
cmovnp rcx, rsi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 36
add dil, 75
sub al, dil
not al
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
cmp al, cl
or eax, -863161215
cmp rax, 2096656187
cmp al, cl
add dl, bl
cmp sil, cl
adc dil, 112
mov dl, bl
adc bl, 35
add ax, 65
add cl, al
test dl, al
and dl, 24
xor sil, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
test al, 114
xor al, cl
btc rdx, rcx
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

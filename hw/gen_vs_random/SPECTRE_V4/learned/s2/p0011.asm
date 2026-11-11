.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
cmp eax, 64
cmp al, 116
xor al, 48
sbb cl, -69
sbb ecx, 71
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 39
sub rax, -1680844889
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and cl, cl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
cmp eax, 64
sbb bl, -75
sbb al, 31
or cx, 23
test dil, -26
xor ax, 13329
and al, 49
adc cl, -86
and dl, 126
add cl, dil
xor ax, 30500
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
movsx di, sil
adc sil, dl
xor al, -60
test dl, al
cmp dl, 23
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
add al, al
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

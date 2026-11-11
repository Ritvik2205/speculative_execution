.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, -263404965
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
xor cl, dl
btc cx, 54
or dil, -28
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
add al, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], -45
add cl, -3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
btc bx, 168
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 57
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
test bl, 4
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 69
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
or rax, 1447934463
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and dl, al
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
sub esi, 62
add esi, 41
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 81
btc ebx, 32
btc cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

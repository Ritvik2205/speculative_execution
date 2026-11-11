.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
cmp dx, ax
adc eax, 551972257
cmovno bx, bx
sub dl, 38
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
add al, 31
cmovnb ecx, ecx
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
bt rsi, rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
sbb cl, -123
imul cx, si, 88
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 42
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 60
cmovs rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

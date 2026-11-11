.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 43
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
mov dil, al
test dl, -81
xor dil, dil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
adc dil, 124
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
sbb bl, -79
test al, sil
adc sil, -2
add al, dil
add al, -6
or sil, sil
sub rdi, 105
and dx, -107
cmp al, -78
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 1
xor dil, cl
cmp al, 105
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
add al, -127
adc al, sil
xor bl, 126
cmp al, 116
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
or dl, -26
and bl, -30
or ax, -13633
and al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

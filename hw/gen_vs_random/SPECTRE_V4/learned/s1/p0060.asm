.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
cmp rcx, -121
add al, -6
test sil, al
test bl, 78
cmp rax, -1247892360
and cl, -128
xor bl, dl
cmp dl, 23
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
or al, al
or al, al
xor al, cl
add dl, -82
or cx, 23
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sbb cl, 35
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
sub al, -84
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
mov cl, bl
xor ax, 45
adc bl, al
sub dil, -28
cmp ax, 28568
or dil, 89
sub dl, 107
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
adc cl, -4
and al, bl
adc al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

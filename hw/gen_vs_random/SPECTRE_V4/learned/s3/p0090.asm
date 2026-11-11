.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -38
cmp rsi, 22
and al, 75
sub al, 127
xor al, 118
dec bl
sbb al, -52
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
or dil, -16
mov dil, bl
add al, dil
xor dl, dil
and al, 100
and ax, 26513
and cl, al
and al, dil
mov al, -71
add al, bl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
adc cl, dl
adc sil, 111
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
sub al, bl
sub sil, dl
mov sil, 59
mov cl, dil
cmp bl, -16
xchg bx, si
test bl, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and al, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

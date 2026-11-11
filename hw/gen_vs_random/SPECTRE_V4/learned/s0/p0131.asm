.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 75
add al, cl
xor bl, -126
xor ax, 45
test eax, -251558852
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
cmp sil, dil
sbb al, 57
sub bl, al
add bl, al
and cl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
bts di, 72
cmp al, -106
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
sub al, -84
or al, -90
sbb bl, 121
cmovl rcx, rsi
test edx, -38580719
xor bl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
mov al, 119
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and al, 85
sub rcx, -99
adc al, -117
cmp dil, 101
adc dil, -15
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
sub sil, -35
sbb dil, 26
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and al, 59
and al, dil
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

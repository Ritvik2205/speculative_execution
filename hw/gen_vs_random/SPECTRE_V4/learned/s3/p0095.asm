.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
xor ax, 45
cmp al, -1
add dl, 109
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
xor dx, -43
or rax, 980130592
test al, dl
cmp dl, 45
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
add dl, -82
add al, -55
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
or dil, 89
test dl, -81
adc dil, -48
or al, sil
or cl, cl
add cl, dil
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
adc dil, cl
sub dil, -11
inc eax
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
add bl, cl
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and dl, al
inc dl
add sil, cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
or bl, sil
and dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

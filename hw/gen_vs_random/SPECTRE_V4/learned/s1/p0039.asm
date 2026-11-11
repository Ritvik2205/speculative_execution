.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -863161215
add bl, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
neg rax
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
cmp bl, al
and cl, dil
dec al
adc bl, 97
add al, -82
cmp rcx, -121
test edx, 1479885278
cmp cl, 100
mov bl, dl
sub al, 86
test al, bl
sub al, 55
dec dil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
or eax, 1470564945
test edx, 1479885278
inc cl
and dl, -104
test sil, 68
sub dl, -16
cmp cl, 59
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
add al, -127
mov cl, 1
and al, cl
cmovle rdx, rdi
bts edi, 93
add dl, bl
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

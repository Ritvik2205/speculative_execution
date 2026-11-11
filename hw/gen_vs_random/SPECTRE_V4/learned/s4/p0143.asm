.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -128
or bl, dl
movzx cx, dl
adc eax, -3570960
sub dil, cl
sub al, 63
and al, 5
btc rdx, rdi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
or cl, 66
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
sub rcx, -99
mov al, bl
add ebx, -57
bt di, dx
cmp rdx, -49
adc esi, 62
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
mov dl, bl
sub dil, -11
neg dil
cmp al, 98
and al, 82
and dil, bl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
or cl, -104
or sil, dil
mov cl, dl
mov dl, bl
or al, cl
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
cmp al, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 37
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

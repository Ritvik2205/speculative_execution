.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
bts edi, 85
cmp al, dl
add al, -3
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and al, dil
or ax, 27604
or cl, -55
add al, 19
neg rax
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
neg bl
and bl, -60
xor dl, -66
adc al, 43
add cl, sil
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
mov al, cl
cmp cl, bl
cmp bl, dl
xchg rdx, rsi
adc al, bl
sbb cl, 12
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

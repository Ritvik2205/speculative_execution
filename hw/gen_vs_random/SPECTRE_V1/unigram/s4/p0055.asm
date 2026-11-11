.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, 45
or bl, bl
btr dx, 58
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno eax, ecx
xor rax, 1636804787
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
lea dx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
sub dl, dil
bt ax, 4
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 71
imul rbx, rdx, 74
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
setnl dl
add al, 112 # instrumentation
setl al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

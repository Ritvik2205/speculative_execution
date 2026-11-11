.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and ax, 16313
or bl, cl
xchg rbx, rdi
or al, dl
mov bl, al
dec dil
sub cl, 18
mov sil, cl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
mov bl, -69
test bl, -116
cmp cl, 107
mov dil, dl
or rcx, 86
mov al, 90
add al, -99
and rax, 1072797615
add eax, 953442933
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
adc dil, -48
adc al, -70
and bl, -30
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
not edx
and al, bl
adc dil, cl
sub dl, 107
test al, -24
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

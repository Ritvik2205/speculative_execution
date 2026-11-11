.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
and al, -28
xor al, 23
sub cl, 18
cmp dil, 53
cmp rax, -1070057082
dec bl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
adc dil, 38
or dx, 48
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
or dil, 5
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and al, sil
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
test di, -19523
cmp rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
or bl, -35
imul si, dx, 81
sub bl, cl
test bl, cl
sub al, cl
adc bl, 35
and al, -118
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
adc sil, -112
neg bl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 48
or cx, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

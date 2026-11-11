.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
cmp al, bl
adc edx, -86
and cx, -117
cmp cl, 49
or al, -83
or al, al
or bl, -99
sub cl, -119
test al, -24
add dil, cl
xor al, sil
adc rax, 253624080
and cl, -118
add sil, -18
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
adc dil, cl
or ax, -13633
cmp dl, 95
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
mov dl, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and sil, -84
and dl, -104
and al, -124
adc bl, 79
and dil, sil
xor ax, -6064
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
adc cl, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

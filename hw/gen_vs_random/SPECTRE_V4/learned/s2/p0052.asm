.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 54
test ecx, 860867711
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sbb sil, -11
add dl, cl
add dl, 109
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dil
cmp eax, -813838876
cmp dl, sil
and al, 85
cmp al, bl
and bl, -60
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
cmp al, cl
cmp al, 98
xor al, -6
and al, dl
adc dl, al
sbb al, 66
mov dl, bl
cmp cl, 49
or cl, cl
sbb ecx, 92
bswap esi
add al, 19
sbb si, 74
cmp bl, cl
or rsi, -5
test bl, dil
adc bl, cl
sub cx, -114
adc sil, 77
and rax, 1827025056
and dil, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

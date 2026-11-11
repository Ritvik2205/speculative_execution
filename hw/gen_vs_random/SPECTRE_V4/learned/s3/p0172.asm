.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
test rdi, 1222000858
or dl, 71
adc ebx, -55
or cl, al
sbb bl, -98
sbb dl, 75
or dl, 71
cmp dl, 45
sub ecx, -107
and al, 49
test sil, 1
or dl, 71
or al, 1
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
dec bl
cmp dil, cl
dec bl
and dil, -61
sub rax, -1680844889
sbb dl, -62
adc bl, dil
adc sil, dil
sub al, 127
xor al, -6
xor al, sil
cmp dl, bl
adc dil, 124
add cl, dl
cmp al, -106
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

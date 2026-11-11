.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, bl
xor cl, cl
adc sil, cl
cmovnz rax, rbx
cmp al, 114
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
cmp al, -122
adc al, 41
or al, al
cmp al, 115
xor ax, 30500
cmovnb edi, eax
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
sub dl, bl
sbb dil, 67
xor al, dl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 71
not al
xor al, -31
cmp dl, cl
or al, -16
cmp al, -78
or sil, sil
cmp al, 75
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

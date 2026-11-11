.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
or cl, dil
and dl, cl
and ax, -603
dec dil
xor bl, -126
cmp rax, -1070057082
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and cl, cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or bl, sil
add al, bl
cmp rsi, 74
cmp bl, -16
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
add bl, 54
xchg esi, edx
mov dl, 81
sub dl, al
add dl, 109
or al, dil
add al, 19
and ax, -4731
cmp dl, 23
add dl, 109
sbb al, sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 18
adc dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

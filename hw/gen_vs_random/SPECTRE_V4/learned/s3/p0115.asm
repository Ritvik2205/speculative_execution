.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
and al, 41
cmp al, -44
imul edx, ecx, -116
and al, 5
or cl, cl
or bl, 61
sbb al, 57
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
xchg ebx, edx
movsx ax, cl
cmp sil, cl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
add al, -29
and dl, dil
sbb al, sil
dec al
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 37
add al, 40
adc al, 116
or al, al
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

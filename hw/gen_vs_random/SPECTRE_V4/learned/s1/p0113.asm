.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 1
or cl, -104
xchg eax, ebx
or al, -90
xor dl, dil
xor ax, 13329
cmp eax, 512128713
test bl, 87
mov dl, bl
or al, -88
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
adc cl, -54
sbb rbx, 20
adc dl, bl
and cl, 126
and bl, 76
xor dil, al
xor ax, -6064
and bl, -60
xor dl, cl
cmp bl, cl
sub al, bl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
adc dl, al
adc al, dil
or ax, -13633
sub cl, -32
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
cmp sil, -100
adc sil, cl
cmp di, -8
or al, -90
and al, 82
sbb al, 95
sub cl, -51
sbb dl, sil
mov sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

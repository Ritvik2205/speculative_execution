.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 32
cmp dil, -29
and cl, -118
cmp edi, 3
or al, -88
sbb dl, -106
mov sil, al
and dl, 126
adc sil, cl
cmp al, -122
dec dl
or cl, dil
and dl, -53
and al, 49
sub al, 86
adc sil, 77
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
cmp dil, al
cmp rcx, -121
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
cmp bl, cl
sbb dil, 86
sbb al, bl
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and bl, -60
add dil, cl
and cl, 32
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
cmp cl, dil
cmovle rbx, rcx
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

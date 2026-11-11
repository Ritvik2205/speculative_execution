.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
or dil, -104
add al, -55
and al, -124
and bl, -119
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and bl, 76
cmp al, 105
test sil, dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
cmp cl, al
mov cl, sil
cmp rax, -1547540200
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and ax, 25163
cmp dil, al
sub al, sil
add dil, cl
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
sub dl, 107
xchg esi, ecx
xor cx, -80
mov sil, dl
or cl, dl
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
add bl, 54
xor bl, 27
add al, -55
and rdx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdx]
dec bl
adc cl, dil
test sil, dil
adc sil, 77
sub bl, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

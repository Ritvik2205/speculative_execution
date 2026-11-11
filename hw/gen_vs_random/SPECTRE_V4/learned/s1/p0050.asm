.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
dec dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
add dl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], ecx
sub bl, 66
sub rbx, 101
or al, 27
sub cl, -127
dec al
xor dl, cl
add al, -127
add bl, 54
sub cl, 92
sbb al, 102
dec dil
or eax, -1213318393
sub dil, -11
test sil, -119
sbb sil, -11
inc dl
and dl, -11
xor dil, dl
adc eax, 917540672
sub al, dl
sub eax, -865916088
or rbx, -107
add bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
cmp bl, cl
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

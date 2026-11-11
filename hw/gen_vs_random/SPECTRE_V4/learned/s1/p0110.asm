.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 64
sub cl, -94
sub dl, al
test eax, 1340292467
cmp cl, 49
cmp eax, -1538116527
sub dl, al
sbb dil, 47
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
add al, -55
bt rbx, 46
or bl, cl
sub dil, al
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sbb sil, al
sub bl, -98
or ecx, 102
and dil, 8
sub al, 11
or edx, 0
cmp al, 109
and si, -70
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and dl, 124
cmp cl, -105
or al, sil
or eax, -646827727
sub al, 55
add dl, cl
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
sbb cl, dil
add dl, 109
test bl, dl
cmp al, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 89
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
or dl, 71
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmp cl, dl
jmp .bb_0.1
.bb_0.1:
adc esi, 67
xor dil, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
cmp al, dil
sub dl, cl
add al, -29
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 100
add dl, -82
mov cl, dl
and ax, 4
adc sil, -63
bt dx, cx
add dl, bl
xor al, -120
and al, 59
cmp sil, -100
add dil, bl
xor al, -60
and dil, -23
and ax, 62
cmp eax, -813838876
or dil, al
test ax, -23852
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
adc dl, 75
and al, cl
sbb bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

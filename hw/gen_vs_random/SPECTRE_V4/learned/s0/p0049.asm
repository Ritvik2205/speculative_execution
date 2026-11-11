.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
or dl, 71
sub al, bl
xor al, 55
and al, 100
and dl, -53
and al, dil
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
sub al, 0
sbb sil, -11
sub dil, dl
xor sil, bl
adc cl, 6
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
mov cl, al
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

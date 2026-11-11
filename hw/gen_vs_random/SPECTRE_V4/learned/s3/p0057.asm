.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
cmp al, 114
sbb al, sil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
sbb cl, -69
xor sil, bl
sub sil, 71
or dil, al
or dil, cl
adc dil, sil
cmp edx, 4
xor bl, 126
and sil, -84
sub al, 59
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
cmp al, -53
adc dil, -15
adc dl, 88
cmp dl, -82
movzx di, al
xor al, 55
add al, -99
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and cl, al
mov cl, bl
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

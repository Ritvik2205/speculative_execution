.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
cmp cl, al
xchg ebx, edi
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and dl, dl
or al, -88
cmp sil, dl
xchg rdi, rdx
sub sil, al
test eax, 1947430392
sub cl, -94
and al, 92
adc cl, al
cmp eax, -813838876
sbb dl, 53
add al, -82
sub cx, -114
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
add dil, sil
and dl, dil
xchg edx, ebx
or bl, dil
xor rax, 93
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
add dil, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

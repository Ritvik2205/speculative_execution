.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
or al, -47
and al, 41
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
cmp al, -78
cmp edx, 4
or al, cl
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
sbb cl, -69
test dl, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and al, cl
sbb cl, bl
or sil, al
sbb cl, -69
mov bl, al
cmp al, -53
xor rsi, -102
xor sil, cl
xor al, -31
and dil, -61
mov bl, dl
xchg bl, dil
or edx, -118
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
sub sil, -35
cmp ax, 26170
or ax, 27604
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and dl, al
or cl, dil
sub dil, -11
xchg ebx, ecx
sbb ax, 7207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

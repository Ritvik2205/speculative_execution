.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 18
sub dl, 107
or dil, -16
xor al, -40
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or al, al
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
sbb bl, -79
mov sil, al
sub bl, al
add sil, bl
and al, 59
or bl, 111
or al, dl
and al, -28
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
test ecx, 860867711
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
or al, -47
test bl, sil
add dl, 109
adc dl, cl
sub di, 9
and cl, -118
xor ax, 13332
and dl, -11
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 53
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

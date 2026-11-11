.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
and al, 82
and dl, -104
sub sil, 71
cmp sil, -100
test esi, -222751961
and bl, dl
adc sil, bl
or ax, 27604
dec al
and dl, bl
bts ebx, 189
cmp al, 75
sub dil, -28
or bx, -33
xor bl, 27
cmp al, -116
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub al, cl
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
adc dl, 35
xchg ebx, eax
dec dil
cmp bl, cl
sbb bl, -98
test bl, dl
xor dil, -23
xchg ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ebx
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
or rsi, 73
sub al, cl
and al, bl
test cl, 78
sbb al, 95
and cl, al
sbb bl, -98
movzx di, dl
xor bl, dil
xor dl, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
add bl, cl
and sil, -84
test dil, cl
or ax, 7381
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
test cl, -31
add dl, -8
inc dl
sub bl, sil
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
sub dl, cl
and di, -34
or al, dl
test dil, -26
cmp sil, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
btc rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
adc dil, 120
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and al, -68
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
cmp dil, 68
add cl, bl
sbb sil, -19
or al, dil
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 68
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

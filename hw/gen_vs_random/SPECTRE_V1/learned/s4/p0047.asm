.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
cmp al, 53
sbb bl, dl
xchg rcx, rax
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
test dl, -105
or dil, cl
add bl, cl
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
or ax, 18658
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

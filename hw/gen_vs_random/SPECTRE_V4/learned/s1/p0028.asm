.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rax, 37
sbb al, 102
adc dl, bl
add bl, 54
mov dil, 61
cmp al, 114
and dl, -53
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
adc eax, -689629357
or rax, -387680856
or ebx, -82
cmp dil, dl
adc dil, cl
and al, cl
add bl, dl
sub eax, -529389957
xor rsi, rdi
and dl, cl
adc al, 43
add al, -99
btc rdx, rax
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
xor dl, sil
test eax, -251558852
or rdi, rax
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

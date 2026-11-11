.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
test dl, 114
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
adc bl, -58
adc al, sil
and al, bl
btc rdi, rbx
xor dl, al
mov bl, dl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
add al, -3
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
sub bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

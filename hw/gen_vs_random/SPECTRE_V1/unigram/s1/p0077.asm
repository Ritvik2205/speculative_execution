.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 66
add edi, edx
test cl, al
add cl, 125 # instrumentation
adc cl, al
lea rdi, qword ptr [rsi + rbx + 97]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 86
movzx bx, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 75
movsx dx, sil
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

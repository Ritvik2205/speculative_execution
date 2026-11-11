.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, bl
add al, 41 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
imul rdx, rbx, 53
adc esi, esi
add bl, 73 # instrumentation
mov rcx, 87
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb rdx, -34
and sil, -55
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 83
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
bt rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
movsx dx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

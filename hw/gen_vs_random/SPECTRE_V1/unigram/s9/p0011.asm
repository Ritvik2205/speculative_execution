.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 18
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
movzx edx, ax
bt eax, 78
test bl, -8
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and bl, 87
setnb bl
and edx, -62
mov bx, 77
lea esi, qword ptr [rax + rcx + 13]
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
sub ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

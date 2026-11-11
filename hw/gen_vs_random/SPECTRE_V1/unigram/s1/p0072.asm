.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
sbb al, cl
cmp dx, 85
and dx, 6
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, 48
sub al, cl
or rdx, 92
mov al, dl
movzx eax, ax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
neg si
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

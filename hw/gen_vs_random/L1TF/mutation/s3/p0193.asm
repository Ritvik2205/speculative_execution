.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
or dil, -28
inc sil
lea eax, qword ptr [rbx + rdi + 265]
btc cx, 31
and bl, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add dl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmp eax, 912798305
lea rdx, qword ptr [rdx + rax + 10045]
or rdx, -98
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
and bl, dl
or rdx, -98
cmp eax, 912798305
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
inc sil
test bl, dil
btc cx, 31
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62
lea eax, qword ptr [rbx + rdi + 265]
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
or dil, -28
lea rdx, qword ptr [rdx + rax + 10045]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

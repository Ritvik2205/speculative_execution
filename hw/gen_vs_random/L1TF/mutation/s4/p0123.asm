.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
and bl, dl
lea rdx, qword ptr [rdx + rax + 10045]
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62
or dil, -28
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmp eax, 912798305
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdx
lea rax, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
lea rdx, qword ptr [rdi + rsi]
mov rdi, -5671708760962025403
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
sub rax, 788906357
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

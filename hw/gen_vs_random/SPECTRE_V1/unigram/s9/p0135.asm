.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 57
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, sil
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dil
sbb dil, bl
cmovl edi, edi
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 75
sub dil, cl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
setle al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

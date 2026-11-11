.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, ecx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 75
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
cmovl ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor cx, 113
mov ax, 69
bts ax, 201
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
lea edi, qword ptr [rax + rax + 31]
or bl, dil
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
lea ax, qword ptr [rax + rsi + 45]
adc dil, al
test ax, 636
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

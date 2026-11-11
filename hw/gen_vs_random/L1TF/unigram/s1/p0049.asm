.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdx + rdi + 30]
lea eax, qword ptr [rdx + rax]
lea eax, qword ptr [rdx + rax + 51706]
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rsi]
cmovnbe dx, si
bts edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
lea rbx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
mul esi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], 82
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
xor rdi, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

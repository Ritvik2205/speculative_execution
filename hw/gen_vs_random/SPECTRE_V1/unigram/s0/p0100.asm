.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
lea ax, qword ptr [rcx + rcx + 23]
or al, 100
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
lea rdx, qword ptr [rbx + rdx + 6174]
btr ebx, edx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 77
lea rdi, qword ptr [rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
mov ebx, edx
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
lea rcx, qword ptr [rax + rax + 56]
cmp esi, 62
test dl, -7
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 72
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test ecx, 1044879383
bt edx, 254
or rbx, -124
and dl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
xor al, -15
bt eax, eax
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
test rax, 1732677821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

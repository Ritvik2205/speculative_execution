.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -26 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
cmovnbe edi, edi
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and cl, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
or rsi, 65
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
xor rcx, 71
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
cmovb eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
bt ebx, 17
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

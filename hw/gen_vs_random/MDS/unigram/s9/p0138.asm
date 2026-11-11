.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
xor dx, 95
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 66
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
cmovnbe rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
btr edi, esi
test rdi, 6
cmovbe rdx, rax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and dil, 46 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
btc rbx, 35
and al, 49 # instrumentation
cmovp rdi, rax
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

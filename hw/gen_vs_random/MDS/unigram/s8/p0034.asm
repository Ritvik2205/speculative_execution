.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, edi
bt ax, 76
xor bl, dil
or edi, eax
bts ecx, ecx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
or edx, edx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
bt eax, ebx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
bts di, si
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

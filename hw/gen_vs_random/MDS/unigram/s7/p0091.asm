.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 10
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
or rdx, -109
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and dil, al
btc edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
test dl, 9
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
xor bl, -61
bt ax, dx
test sil, bl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
cmovo rcx, rcx
cmovo edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

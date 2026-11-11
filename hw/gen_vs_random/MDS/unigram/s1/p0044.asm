.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, bl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
cmovnz rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
cmovl rbx, rax
not dil
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
cmovbe rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and al, 38 # instrumentation
cmovbe ecx, eax
cmovnb ecx, edi
and dl, 21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
bt bx, 253
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
or rcx, -17
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
btr di, 89
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

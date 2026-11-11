.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
cmovle bx, ax
bt ax, si
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
or bl, dil
cmovnb esi, edx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, bl
and dl, 91 # instrumentation
cmovnle ecx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and al, 35
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 54
bt eax, 117
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
btr di, 89
test ecx, ebx
and bl, -123 # instrumentation
cmovnp ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

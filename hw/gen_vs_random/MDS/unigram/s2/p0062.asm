.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -85
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 42
cmovnbe rsi, rsi
cmovnle rcx, rax
xor bl, al
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
bts rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
bt dx, ax
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and ax, 31082
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
bts esi, 82
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

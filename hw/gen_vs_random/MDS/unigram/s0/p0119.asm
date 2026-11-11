.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rcx, rax
and rdi, 90
and bx, 12
or bl, -54
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 67
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
cmovnz edi, edx
test dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
cmovo edi, edi
cmovo rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

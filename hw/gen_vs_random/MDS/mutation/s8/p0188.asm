.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
or si, 0b1000000000000000 # instrumentation
bsr ax, si
test bl, bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
or dil, -71
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and ax, 5001
cmovns ax, dx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and cl, -76 # instrumentation
cmovl si, ax
and cl, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and bl, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

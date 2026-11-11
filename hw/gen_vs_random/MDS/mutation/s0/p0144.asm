.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and bl, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
and ax, 29207
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
test bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
cmovns ax, dx
and cl, -76 # instrumentation
cmovl si, ax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
or dil, 12
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and cl, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

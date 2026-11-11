.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
test eax, edx
test rsi, 24
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
cmovbe edi, edi
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
test rdi, rbx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and bl, 26 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and dl, 120 # instrumentation
cmovnle cx, dx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 68
or ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

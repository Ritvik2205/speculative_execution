.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 83
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 31
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
cmovb esi, ebx
imul al
xchg eax, edi
add bl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
cmovo rsi, rsi
bts di, dx
cmovle si, ax
or sil, al
cmp sil, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

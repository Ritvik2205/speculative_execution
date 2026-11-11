.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
bt cx, bx
test edi, -1252846009
cmovnle rcx, rbx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
or bl, -54
or cl, -36
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
or bl, 13
cmovnle rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

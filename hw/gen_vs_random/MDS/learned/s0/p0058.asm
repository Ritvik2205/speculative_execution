.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmovnz ax, cx
xor al, -28
bts eax, esi
cmovnb di, ax
btr rsi, 73
xor dl, -68
cmovnbe edx, esi
cmovb si, ax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovnb rdx, rsi
lea rdx, qword ptr [rdi + rax]
not ebx
xor ebx, 63
xor al, -119
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 30
xor al, -28
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

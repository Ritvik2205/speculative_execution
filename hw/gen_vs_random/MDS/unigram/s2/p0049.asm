.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe di, ax
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 37
xor bl, -88
cmovz ax, ax
and cl, -76 # instrumentation
cmovl dx, cx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test dl, bl
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 34
or esi, -110
xor sil, bl
cmovnbe rbx, rdi
cmovnbe bx, cx
bt ax, 76
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
and cl, 7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

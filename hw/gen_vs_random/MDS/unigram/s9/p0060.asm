.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
test bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor al, dil
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
cmovo esi, edx
xor bx, 75
bt cx, bx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 57
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and sil, 66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and dil, 34 # instrumentation
cmovno edi, edx
and dl, 120 # instrumentation
cmovnz edi, eax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

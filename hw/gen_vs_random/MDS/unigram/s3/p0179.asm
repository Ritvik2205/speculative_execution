.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and dil, -49 # instrumentation
cmovno di, ax
xor sil, al
cmovnb edx, edx
bts cx, bx
or edi, 85
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 50
or dil, al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 1
and bx, si
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 76
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 8
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
cmovnz edi, ecx
bts dx, 167
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

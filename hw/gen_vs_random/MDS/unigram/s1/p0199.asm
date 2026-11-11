.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 12
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 85
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 34
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
or dil, dl
cmovo eax, edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovl rdx, rcx
btr rax, 15
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
xor ebx, ebx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 85
bts rdx, 255
not edx
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
cmovz di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

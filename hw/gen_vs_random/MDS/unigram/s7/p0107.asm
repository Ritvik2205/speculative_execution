.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
cmovle cx, si
not sil
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
or rdi, -11
and rdx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 39
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 40
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 59
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 8
bt di, ax
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

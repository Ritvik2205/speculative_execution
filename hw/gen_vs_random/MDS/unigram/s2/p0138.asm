.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
xor bl, -102
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
btr eax, 51
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
or cx, -42
xor ecx, eax
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
test rdx, 14
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 63
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 76
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 33
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
cmovnz bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

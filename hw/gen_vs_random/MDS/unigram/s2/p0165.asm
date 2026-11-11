.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 73
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], esi
cmovz rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
or al, dl
or bl, 84
or rcx, rsi
cmovle ecx, edi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
xor eax, 1170472196
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

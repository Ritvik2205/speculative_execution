.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul esi
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, esi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
cmovo rdi, rdi
imul rcx
mov ecx, edi
cmovnz rbx, rcx
lea eax, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
mov esi, -1776760885
or dl, 8
and rcx, rax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

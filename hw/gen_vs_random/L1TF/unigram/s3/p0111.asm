.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
mov dil, 62
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
or rdx, -22
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 54
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sbb rdx, 98
and dx, 49
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 96
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
lea di, qword ptr [rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

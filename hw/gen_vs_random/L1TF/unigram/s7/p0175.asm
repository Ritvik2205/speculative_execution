.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 22
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
cmovb di, bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and dil, 58
lea esi, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 90
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
dec bx
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rax + rdi]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 48
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
btr cx, 11
cmovno bx, dx
lea si, qword ptr [rbx + rcx + 43]
or al, 100
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
movsx ebx, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

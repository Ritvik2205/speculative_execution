.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
cwde
cdq
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
cmovb ebx, edi
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
add al, 12 # instrumentation
cmovnb edx, eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
dec di
cmovo bx, dx
cmp ax, 24210
not al
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

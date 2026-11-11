.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cdq
add al, 12 # instrumentation
cmovnb edx, eax
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
lea rcx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
cwde
cmovb ebx, edi
jmp .bb_0.1
.bb_0.1:
cmp ax, -21455
mov al, bl
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
cmovo bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
dec di
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

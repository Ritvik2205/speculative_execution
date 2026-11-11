.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
cmovb ebx, edi
add al, 12 # instrumentation
cmovnb edx, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
cdq
cwde
lea rcx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
cmp ax, -4865
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
dec di
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
mov al, bl
not al
cmovo bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

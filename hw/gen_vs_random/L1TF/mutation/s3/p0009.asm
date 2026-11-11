.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
cdq
cmovb ebx, edi
cwde
add al, 12 # instrumentation
cmovnb edx, eax
lea rcx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
dec di
mov al, bl
not al
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
cmp ax, -14781
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
cmovo bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

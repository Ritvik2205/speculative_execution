.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
or al, 100
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 73
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
movzx edx, dx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], cx
or rax, -3
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 31
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 16
btr eax, 55
test ax, -13885
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

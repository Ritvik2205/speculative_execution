.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and di, 1
not ax
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
cmovnl ebx, esi
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 18
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
not eax
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
cmovb di, di
and esi, 88
and dl, -7
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

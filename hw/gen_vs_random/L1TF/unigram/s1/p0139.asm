.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
cmovb dx, cx
lea rsi, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
cmp bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 98
add dl, -123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
cmp ebx, 48
bt eax, esi
cmp edi, 54
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 86
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
cmp dx, 89
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
mov eax, edi
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
cmovnl rdx, rcx
or cl, 97
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
cmovle rcx, rsi
or dl, 77
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 57
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
mul di
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

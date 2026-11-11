.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
xor dil, 76
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
btr rcx, 17
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
cmovo di, di
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 38
cmovz rcx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 33
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
bts cx, 73
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and dl, 60 # instrumentation
cmovno eax, eax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

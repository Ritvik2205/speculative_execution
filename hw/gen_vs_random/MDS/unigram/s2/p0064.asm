.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 100
or sil, -8
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 61
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor dx, bx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
bts ax, di
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
cmovno edx, edi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and dil, bl
btc cx, 104
or rcx, 28
and cx, 98
cmovs edi, edi
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
xor cl, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

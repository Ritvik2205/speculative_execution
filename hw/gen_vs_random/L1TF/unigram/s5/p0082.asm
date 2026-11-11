.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
add dl, 85 # instrumentation
cmovp si, si
add dil, -83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
cmovo rbx, rax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
jmp .bb_0.1
.bb_0.1:
test rdi, 57
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
add al, 56
cmp dl, -56
lea rcx, qword ptr [rdx + rbx]
movzx edi, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
test dl, -95
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
bts rbx, 115
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
or bx, dx
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
cmovo rbx, rbx
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
xor al, al
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
bt si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
or bx, dx
xor al, al
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
bt si, cx
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and bl, dl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
or dil, dl
test dl, -119
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
bts rbx, 115
cmovo rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
or bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
or dil, dl
bts rbx, 25
and bl, dl
xor al, al
test dl, -119
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
bt si, cx
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
cmovo rbx, rbx
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

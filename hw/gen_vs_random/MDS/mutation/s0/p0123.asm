.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
or bx, dx
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
bt si, cx
test dl, 9
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
cmovo rbx, rbx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and bl, dl
xor al, al
or dil, dl
bts rbx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

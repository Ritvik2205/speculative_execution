.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
bts rbx, 115
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
or dil, dl
or bx, dx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
cmovo rbx, rbx
test dl, -95
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
bt si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
xor al, al
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and bl, dl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
bts rbx, 25
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
or bx, dx
cmovo rbx, rbx
test dl, -119
xor al, al
or dil, dl
bt si, cx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
bts si, 158
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
btr edx, 255
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
jmp .bb_0.1
.bb_0.1:
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and bl, dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
bts rbx, 25
bt si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
cmovo rbx, rbx
or dil, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
test dl, -119
or bx, dx
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

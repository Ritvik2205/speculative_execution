.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rax, -2039117613
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
bt ebx, edx
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
cmovnz rdx, rcx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
cmovo rbx, rbx
or dil, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
test dl, 9
or bx, dx
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

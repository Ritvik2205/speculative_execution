.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
xor al, -19
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
bt rcx, rax
cmovs edx, eax
or cl, al
or rcx, rax
xor dx, 86
or dx, 125
bt bx, di
test ax, cx
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
cmovnz cx, si
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
test rax, -359674714
cmovl si, ax
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
cmovo rcx, rax
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

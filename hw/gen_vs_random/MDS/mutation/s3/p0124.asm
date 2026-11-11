.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
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
bts rbx, 56
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
jmp .bb_0.1
.bb_0.1:
and al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
cmovno rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

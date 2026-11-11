.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
and al, -13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
or si, 0b1000000000000000 # instrumentation
bsr bx, si
test al, 91
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test dx, ax
jmp .bb_0.1
.bb_0.1:
xor rcx, 71
and rax, -636362975
test bl, -114
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
or rbx, -72
and bl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
cmovno rsi, rbx
and cl, 78 # instrumentation
cmovs dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

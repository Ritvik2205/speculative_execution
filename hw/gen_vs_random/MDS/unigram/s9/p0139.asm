.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 39
or rsi, rdi
test sil, 41
and dl, bl
and al, -33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and sil, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
bt edi, 225
bts di, 73
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
cmovnb bx, ax
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
cmovnz di, ax
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and ecx, eax
bt cx, si
cmovo ecx, eax
test ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

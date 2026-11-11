.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdx], di
and al, 82
btr rcx, rdi
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
test al, 22
bts si, 205
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 73
xor dl, dl
and bl, 20 # instrumentation
cmovo eax, edi
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or rbx, rcx
test ecx, -1843375753
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
btr edi, edi
and rcx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
cmovb ax, di
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

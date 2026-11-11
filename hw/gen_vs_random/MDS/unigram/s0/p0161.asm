.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rsi, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
or ebx, -15
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
or sil, dil
or cl, al
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
test bl, -9
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 3
xor si, di
xor dl, -43
bts rcx, 98
btc rax, 106
or eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

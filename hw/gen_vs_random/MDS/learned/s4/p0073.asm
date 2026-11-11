.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
cmovb ecx, edi
xor cl, 122
not si
test cl, al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 74
btc bx, 179
or di, 0b1000000000000000 # instrumentation
bsr dx, di
test bl, 106
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
btc rsi, 23
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

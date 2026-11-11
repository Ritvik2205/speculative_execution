.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 99
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 30
add cl, 107 # instrumentation
lea ecx, qword ptr [rax + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ebx
cmp dx, 3
lea rax, qword ptr [rcx + rax + 69]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dx, 10
cmovz ecx, eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
add dl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

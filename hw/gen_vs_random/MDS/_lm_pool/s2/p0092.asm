.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
or rcx, 54
and di, 91
test sil, -55
xor sil, -14
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 29
btc cx, si
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor rbx, 89
test al, sil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 74
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
xor rax, -345061362
or al, dil
xor ax, -23364
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

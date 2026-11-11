.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and sil, cl
or sil, sil
jmp .bb_0.1
.bb_0.1:
and ax, 13090
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 48
xor bl, al
or al, 54
or rsi, 99
jmp .bb_0.2
.bb_0.2:
test sil, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

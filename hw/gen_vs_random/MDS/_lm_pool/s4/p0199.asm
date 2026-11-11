.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
bt dx, ax
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
xor rcx, 71
or al, al
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor al, sil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
not al
xor rdi, -9
and ax, 5001
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

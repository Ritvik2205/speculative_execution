.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 339
or di, 62
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
xor dl, al
test dl, cl
jmp .bb_0.1
.bb_0.1:
test cl, 54
test dil, al
and bl, 68
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
test eax, 1729060510
and cl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
xor dl, al
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 34
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

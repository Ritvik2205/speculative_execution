.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 40
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 36
or bl, 100
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or al, -75
test rbx, 8
xor al, dil
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
bt cx, si
bts rsi, rcx
or bl, 13
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and dl, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or rax, 52
test cl, dil
xor rax, -1657511731
and rax, -2039117613
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

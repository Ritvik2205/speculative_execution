.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
test dl, dil
test ax, 30932
btr cx, di
xor eax, 571592471
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
xor si, 91
test edx, -372470678
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
xor dil, al
or di, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

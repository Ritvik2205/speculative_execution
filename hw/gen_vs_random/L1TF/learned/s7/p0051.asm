.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 47
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
sbb cl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
add al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

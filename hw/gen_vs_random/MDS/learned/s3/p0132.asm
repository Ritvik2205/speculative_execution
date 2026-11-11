.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor rdi, -9
test esi, 425331143
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test ax, 18697
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
xor ax, -12492
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.3
.bb_0.3:
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ax, -17107
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
add al, 110 # instrumentation
movzx si, al
lea cx, qword ptr [rcx + rcx + 31]
or rcx, 69
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
imul cx, cx
lea esi, qword ptr [rbx + rbx + 50]
cmp dl, 71
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
cmovno ax, ax
add al, -47 # instrumentation
setbe al
test esi, 35
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

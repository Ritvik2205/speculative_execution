.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb cx, ax
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
setns dl
or esi, edi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 69
imul ax, bx, 51
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
lea rcx, qword ptr [rdx + rsi]
add bl, -52 # instrumentation
not edx
add bl, 68
cmp dl, dl
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
xor dl, dl
cbw
add al, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 61
add al, 31
xor al, 14
movzx edi, bx
cmp dil, 46
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 97
xor dx, 71
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
lea rax, qword ptr [rcx + rdx + 96]
cmp rdx, rdx
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
setbe bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

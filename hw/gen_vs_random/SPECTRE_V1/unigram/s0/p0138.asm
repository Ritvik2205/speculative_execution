.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
lea rdx, qword ptr [rsi + rdx]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 16
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, rax
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
imul cl
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
lea dx, qword ptr [rbx + rsi + 66]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

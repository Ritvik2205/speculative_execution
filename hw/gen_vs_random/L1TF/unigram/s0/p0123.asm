.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
not eax
btr ax, cx
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
add ebx, 2
test dl, al
lea ebx, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
add dl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 60
or rdx, -22
sbb bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

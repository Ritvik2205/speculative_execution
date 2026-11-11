.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov eax, 27
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
sbb bl, bl
jmp .bb_0.1
.bb_0.1:
add al, al
setnz dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 64
imul rcx
lea eax, qword ptr [rbx]
lea rax, qword ptr [rbx + rdx]
add dl, 76 # instrumentation
sbb ax, 10551
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], cx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

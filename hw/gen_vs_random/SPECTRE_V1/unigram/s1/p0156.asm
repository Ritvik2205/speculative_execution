.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rbx, di
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
xchg esi, edx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor di, 9
and dil, 98
test dil, -116
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], cx
add al, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
add al, -74 # instrumentation
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
lea cx, qword ptr [rax + rsi]
add cl, -51 # instrumentation
cmovl eax, edx
setbe dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

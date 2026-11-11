.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
xchg esi, ebx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdi]
test bl, 84
add al, 80 # instrumentation
sbb bl, bl
not dl
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 34
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
add dl, 85 # instrumentation
cmovp dx, dx
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
setbe dl
sbb cl, -11
or dl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

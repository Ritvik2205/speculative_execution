.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, dl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
sbb rax, 803312930
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rbx
add bl, 79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
jmp .bb_0.1
.bb_0.1:
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
add al, -37 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 23
sbb di, cx
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and eax, 1032144833
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

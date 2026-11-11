.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
adc al, cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 19
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 48
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
setz bl
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
add al, dil
add al, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
cmovnbe rax, rdi
xor al, al
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 65
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

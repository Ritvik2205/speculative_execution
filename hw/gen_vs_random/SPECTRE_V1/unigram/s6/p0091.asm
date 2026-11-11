.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 36
xor rdi, 9
add al, cl
add cl, al
add al, dil
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, bl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 54
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 57
add dl, -73 # instrumentation
btr si, bx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
cmovnz ax, si
add bl, 73 # instrumentation
mov rdx, -4695514922061161705
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

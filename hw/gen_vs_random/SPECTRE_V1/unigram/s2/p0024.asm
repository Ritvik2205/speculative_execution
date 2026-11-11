.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
sub al, dl
btr rdx, 65
lea esi, qword ptr [rsi]
xor ax, 913
cmovno ax, ax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
seto dl
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
cmp si, -11
and dil, -93
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
mul rcx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

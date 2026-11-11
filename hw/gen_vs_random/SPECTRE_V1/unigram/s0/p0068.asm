.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], cx
cwd
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
or ax, 18658
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
imul rdx
cmovl eax, ebx
lea bx, qword ptr [rax + rsi + 50]
test al, 42
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
btc edx, 169
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
inc dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

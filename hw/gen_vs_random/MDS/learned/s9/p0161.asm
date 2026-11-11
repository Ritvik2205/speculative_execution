.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 127
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and dil, -39
xor rdi, -9
and dl, -73
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
btr dx, cx
or al, 54
or bl, al
or al, -75
not dl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and si, -121
bts ax, dx
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

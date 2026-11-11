.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
cmovnb si, dx
and rax, -1378371328
xor al, -119
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
test al, bl
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
xor al, -15
xor al, -119
cmovbe eax, ecx
or cl, dl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], si
xor dil, 2
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

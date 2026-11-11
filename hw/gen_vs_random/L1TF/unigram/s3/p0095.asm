.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
xchg cx, dx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
lea rsi, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
or bl, bl
cmovnbe cx, dx
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
not al
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
xor al, -127
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
mov dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

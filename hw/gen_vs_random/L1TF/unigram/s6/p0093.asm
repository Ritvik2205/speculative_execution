.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
cmovnp ax, dx
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
inc cl
cmp al, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add bl, -75 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
add rax, 909978580
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

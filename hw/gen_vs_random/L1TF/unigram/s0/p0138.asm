.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
add al, 74
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], dx
test dl, 84
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 27
cmp rcx, 85
xchg cl, cl
bts cx, 176
lea dx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

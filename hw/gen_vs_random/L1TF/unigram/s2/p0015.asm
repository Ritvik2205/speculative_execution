.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi, rdi
mov bl, 35
btc rsi, rdx
sub rbx, 82
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 47
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
add cl, 88
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
movzx rdi, di
btr rsi, rax
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
or bx, dx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 17
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

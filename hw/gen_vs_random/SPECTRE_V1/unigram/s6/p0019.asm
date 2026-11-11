.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 13 # instrumentation
cmovno rax, rdi
xor al, dl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 91
test di, 93
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
mov bl, dl
lea rcx, qword ptr [rax]
dec al
add al, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ebx
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
sets bl
sub dl, bl
xchg rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

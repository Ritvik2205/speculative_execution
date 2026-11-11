.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, ecx
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
btc cx, bx
cmp dl, -56
inc al
cmp esi, -52
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 73
setle cl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
lea rax, qword ptr [rcx]
add rsi, 31
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
add dl, 121 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

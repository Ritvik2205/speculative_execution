.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setz al
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
cmp dl, al
add dl, -121 # instrumentation
cmovnp edi, ebx
add dx, -51
test dl, 66
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edi
inc bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
test sil, cl
cmovo rcx, rax
btc bx, cx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
mul dx
lea ebx, qword ptr [rbx]
add cl, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

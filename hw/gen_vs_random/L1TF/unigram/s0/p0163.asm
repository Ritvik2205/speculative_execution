.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
add sil, -111
or bx, 3
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
setp al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
cmp dl, 66
cmp cx, 16
btc rax, 31
movzx di, al
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
xor cl, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

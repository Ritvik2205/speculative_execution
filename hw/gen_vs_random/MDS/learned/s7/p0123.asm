.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
xor rax, -404206377
test bl, -9
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 73
test rsi, 52
test al, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
or rdi, 21
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor ax, -23364
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and cl, cl
test rcx, -613256812
and ax, 19224
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

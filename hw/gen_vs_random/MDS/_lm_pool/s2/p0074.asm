.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or al, -17
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
and edi, 23
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
xor di, 93
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
xor rax, -404206377
test edx, -372470678
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

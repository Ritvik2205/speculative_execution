.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or al, 37
jmp .bb_0.1
.bb_0.1:
test al, 66
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and cl, cl
or bl, dl
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
or al, 16
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
test cl, al
xor ax, -5889
test al, -81
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
cmovnp rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
xor cl, 89
test al, cl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
cmovns rbx, rax
lea si, qword ptr [rax + rdx + 66]
jmp .bb_0.1
.bb_0.1:
cmp ax, -21455
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 9
bt cx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

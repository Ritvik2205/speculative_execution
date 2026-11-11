.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 8
or al, bl
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
test dil, dl
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
xor dx, 20
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or dil, 12
test bl, -114
bts rdi, rax
test edx, -372470678
or al, bl
and eax, 33
and ax, 19740
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

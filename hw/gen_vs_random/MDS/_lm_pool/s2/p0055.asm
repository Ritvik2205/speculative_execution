.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
bt ax, cx
test al, 91
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
xor cl, 83
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and cl, 79
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and dl, dl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 89
and al, dl
bt dx, bx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

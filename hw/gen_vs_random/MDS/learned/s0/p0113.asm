.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
test al, 127
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
jmp .bb_0.1
.bb_0.1:
bt rbx, 241
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and sil, -69
test eax, 343548072
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
jmp .bb_0.2
.bb_0.2:
xor ax, -12492
bt bx, cx
xor si, 91
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
xor di, -83
cmovle si, cx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

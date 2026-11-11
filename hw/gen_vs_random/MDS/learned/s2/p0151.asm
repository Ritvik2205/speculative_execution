.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
or bl, al
or al, al
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
test cl, 0
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor dil, -124
xor al, dl
jmp .bb_0.2
.bb_0.2:
xor al, 8
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
not bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and cx, -2
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

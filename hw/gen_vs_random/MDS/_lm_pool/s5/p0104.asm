.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btr di, cx
or al, 37
or dl, cl
test sil, 41
xor ax, 23633
or al, 16
xor rax, -91
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
or al, dil
or bl, cl
jmp .bb_0.2
.bb_0.2:
test sil, al
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

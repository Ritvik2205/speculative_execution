.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or rdx, -109
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
test sil, -55
test cl, 54
test eax, 298249463
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

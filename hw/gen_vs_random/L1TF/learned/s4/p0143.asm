.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
add al, 93
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 88
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
test sil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

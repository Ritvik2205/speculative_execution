.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test dil, -51
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test ecx, -1843375753
btr ecx, edi
xor eax, 2063216578
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
test al, al
or rdi, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

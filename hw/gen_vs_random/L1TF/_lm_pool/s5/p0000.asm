.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
xchg edx, ebx
test al, -82
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
test al, 15
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
and dl, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
xor dl, cl
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

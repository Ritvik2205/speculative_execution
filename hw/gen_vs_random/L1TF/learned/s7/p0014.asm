.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
cmovno si, di
xor dil, -42
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
or al, cl
test bl, 84
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
lea edx, qword ptr [rcx + rdx + 46]
and dl, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

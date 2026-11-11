.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
bt edi, edx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
xor al, 8
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
test eax, 343548072
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
xor cx, -18
bt si, cx
btr esi, eax
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

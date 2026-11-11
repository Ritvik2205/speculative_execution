.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
movzx bx, dl
sub dl, 105
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
sub dx, 34
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

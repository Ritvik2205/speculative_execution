.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, 20
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
add cx, 67
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
add bl, 90 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
add dl, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
test cl, -49
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 68
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 17
or edi, ebx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
add al, -36 # instrumentation
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 67
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
sub al, sil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
movzx edx, di
not rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

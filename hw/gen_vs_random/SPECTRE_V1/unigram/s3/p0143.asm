.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 41 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
lea rax, qword ptr [rbx]
add bl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
sbb ecx, 88
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, -31
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 83
add dl, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 63
bt dx, ax
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
neg ecx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
lea eax, qword ptr [rax + rdx + 5]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

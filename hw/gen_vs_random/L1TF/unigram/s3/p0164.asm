.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add di, 31
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
lea ecx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 28
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 72
cmovl ecx, eax
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
add al, al
sub al, -3
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

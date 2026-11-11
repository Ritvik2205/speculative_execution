.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
imul ebx, eax
lea rcx, qword ptr [rcx + rdx + 97]
neg cl
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdx
lea dx, qword ptr [rax + rdx + 14]
or al, -57
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
bt rbx, 88
xchg sil, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
btr ebx, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

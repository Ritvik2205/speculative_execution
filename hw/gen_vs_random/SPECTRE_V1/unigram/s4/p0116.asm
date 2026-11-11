.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg al
add rcx, 23
xor sil, cl
lea rax, qword ptr [rbx + rbx + 40]
bt eax, edi
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
lea si, qword ptr [rdx + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 88
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 67
add cl, -93 # instrumentation
not rax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

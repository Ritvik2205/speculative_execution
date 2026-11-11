.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
setnb bl
add cl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 94
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
xchg dl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
lea bx, qword ptr [rdi + rax + 6]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -54
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
lea bx, qword ptr [rdx + rbx + 39]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

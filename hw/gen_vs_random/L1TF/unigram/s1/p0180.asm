.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rbx + rax]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
sbb rsi, 2
cmovo eax, ecx
or cl, -78
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 35
lea eax, qword ptr [rax]
cmp dil, cl
add dl, 104 # instrumentation
sbb rdx, 2
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 58
and rax, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 34
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -114
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

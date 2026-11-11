.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
lea ecx, qword ptr [rdx + rax + 29]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
add al, -33 # instrumentation
cmovnl dx, di
jmp .bb_0.1
.bb_0.1:
add al, al
and cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
movzx edx, ax
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

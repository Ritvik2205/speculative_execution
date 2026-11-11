.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx si, bl
add dl, -15 # instrumentation
cmovl rdx, rbx
sbb dl, cl
lea bx, qword ptr [rbx + rdx + 8]
setb al
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -33
add bl, -4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
cmovnl bx, di
imul ecx
mov dl, sil
mul dil
sbb rdx, 96
lea dx, qword ptr [rax + rax + 93]
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
lea ebx, qword ptr [rdx + rcx + 28]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

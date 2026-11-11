.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 1
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx], 50
jmp .bb_0.1
.bb_0.1:
test al, -82
btr cx, 26
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
cmp al, cl
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

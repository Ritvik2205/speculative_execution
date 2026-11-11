.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
or al, dil
add ecx, 12
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
not bl
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

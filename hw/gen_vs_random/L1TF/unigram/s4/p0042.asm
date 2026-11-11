.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
lea dx, qword ptr [rax]
and rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 58
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 27
and al, bl
setnz bl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
lea ecx, qword ptr [rcx + rdx + 98]
lea esi, qword ptr [rax + rdi]
inc sil
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 98
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

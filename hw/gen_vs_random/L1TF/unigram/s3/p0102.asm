.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, di
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
xchg ebx, edi
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], eax
cmp cx, 72
cmovle rdx, rbx
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
add dl, dl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 36
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
and ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

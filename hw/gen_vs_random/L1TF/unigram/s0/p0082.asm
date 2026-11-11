.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
setnle sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 19
bt di, 27
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
btr bx, 90
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], -105
lea rax, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
cmp cx, 37
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
adc dl, dil
or ax, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

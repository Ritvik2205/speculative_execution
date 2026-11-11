.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, al
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
test eax, -2032743474
sbb ebx, -116
test ax, 22956
bts dx, 31
movzx cx, cl
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add dl, 121 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
seto cl
and rbx, -88
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

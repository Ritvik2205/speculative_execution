.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ebx, ecx
test al, 91
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
cmovle ax, dx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rbx], cx
and eax, ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 53
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor rcx, rdi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
cmovns ecx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
xor dl, dil
cmovb ax, ax
bt rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
test al, 91
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

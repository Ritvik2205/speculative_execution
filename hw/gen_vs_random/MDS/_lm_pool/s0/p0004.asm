.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 14
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
xor dl, -59
btr di, cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor dl, cl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
xor dil, sil
jmp .bb_0.1
.bb_0.1:
or ecx, eax
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
jmp .bb_0.2
.bb_0.2:
bt ax, si
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
test eax, 424329527
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

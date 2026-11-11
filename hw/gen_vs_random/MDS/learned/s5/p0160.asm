.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, ax
btr di, si
or al, cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 22
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
bt eax, edx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and al, al
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
test cl, 91
and edi, 23
test cl, 101
test ax, -11534
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

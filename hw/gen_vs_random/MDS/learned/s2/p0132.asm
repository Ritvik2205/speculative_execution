.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
jmp .bb_0.1
.bb_0.1:
and al, dil
or dl, -21
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
test rcx, rax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and al, dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
bt dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

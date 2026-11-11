.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
test al, -81
and dil, al
test ebx, -961564216
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
xor rcx, -2
cmovnz rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
xor rax, -270810088
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
or bl, cl
cmovp ax, di
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor rbx, 89
test dil, bl
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
test eax, 343548072
and cl, 122 # instrumentation
cmovl edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

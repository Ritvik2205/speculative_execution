.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -109 # instrumentation
cmovns rax, rax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 93
or ax, -4635
xor cl, 122
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
or al, al
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
cmovz rbx, rdi
and ax, 30884
or dx, 5
and dil, -115 # instrumentation
cmovl dx, di
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
or dl, dil
and ax, 28417
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
or bx, 9
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

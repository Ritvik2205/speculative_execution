.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
cmp cl, dl
xor ecx, 75
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
adc bl, al
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
add dl, cl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

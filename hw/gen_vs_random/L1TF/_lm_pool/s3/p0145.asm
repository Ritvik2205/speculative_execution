.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 30996
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
test dl, cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
or rdx, 11
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
or al, -48
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

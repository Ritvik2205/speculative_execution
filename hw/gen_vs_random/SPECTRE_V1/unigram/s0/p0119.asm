.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 21
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
cmp edx, 44
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
inc dl
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
cmovnle rax, rcx
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
cmp edi, 6
or ax, -114
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 70
xor cl, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

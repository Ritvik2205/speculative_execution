.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
mul rcx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
or al, -2
cmovb rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
lea rbx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

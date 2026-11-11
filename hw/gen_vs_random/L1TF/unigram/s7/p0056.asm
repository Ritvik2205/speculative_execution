.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
xchg cl, cl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
neg cx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 69
and dl, sil
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 63
inc bl
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
add bl, 119 # instrumentation
cmovle bx, dx
inc rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

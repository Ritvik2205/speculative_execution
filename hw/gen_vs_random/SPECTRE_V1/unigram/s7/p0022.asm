.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
inc rdx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovnle rcx, rax
setnp dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 39 # instrumentation
cmovo eax, ebx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
sbb sil, cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovl esi, eax
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], dx
lea ebx, qword ptr [rax]
add bl, -9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 99
add dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

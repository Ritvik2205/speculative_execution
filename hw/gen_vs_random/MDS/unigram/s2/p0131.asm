.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp ax, bx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
btr esi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
cmovo eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
xor esi, 10
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and bl, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
xor bx, di
and dl, sil
cmovnbe edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

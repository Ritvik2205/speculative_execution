.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
cmovs ecx, ecx
or rcx, 58
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
cmovz dx, si
bt dx, di
btc rbx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
or rdx, 69
and dl, 107 # instrumentation
cmovs eax, ecx
and eax, -2116875023
cmovnz rcx, rdx
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
and bx, ax
and cl, 85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

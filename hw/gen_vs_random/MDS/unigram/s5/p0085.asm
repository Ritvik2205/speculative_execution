.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 6
btr edi, edx
test al, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
cmovle ebx, edx
or cx, 49
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
xor cx, cx
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and dl, -40 # instrumentation
cmovle ax, dx
cmovns ecx, edi
btr esi, esi
xor bx, 4
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
test al, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
or al, -24
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

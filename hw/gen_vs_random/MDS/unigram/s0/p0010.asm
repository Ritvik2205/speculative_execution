.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
or edx, -78
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rax, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rax]
cmovz dx, bx
test edx, esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
xor rsi, -117
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
or ecx, ecx
cmovb ax, ax
xor rbx, 89
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and bl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and cl, -23 # instrumentation
cmovno eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
not dx
or bl, bl
test ecx, -1843375753
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
btc dx, bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
bts edi, 248
cmovnz edi, esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
or ecx, ecx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 87
cmovp ax, ax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
cmovz rcx, rdi
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, 86
or di, -18
cmovz rsi, rdi
cmovle rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
cmovno dx, cx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and bx, -21
cmovbe rcx, rax
or bx, ax
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
and al, -56 # instrumentation
cmovl rax, rbx
xor eax, 73
and dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

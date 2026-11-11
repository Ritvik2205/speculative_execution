.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edx
bts di, si
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 94
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 49
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 32
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
cmovz rdi, rcx
btc ecx, 11
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 31
and cl, -49 # instrumentation
cmovno cx, di
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

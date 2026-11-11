.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg di, ax
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
cwde
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add esi, -124
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
bt rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
btc si, si
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
cmovnle edi, ecx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

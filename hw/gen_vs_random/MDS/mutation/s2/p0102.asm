.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 60 # instrumentation
cmovnl esi, edi
cmovnbe edi, edx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
xor al, cl
cmovbe si, ax
and bl, 120 # instrumentation
cmovnp cx, si
xor rax, -1499464454
bts rcx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
test cl, al
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xor al, -19
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe si, ax
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xor al, cl
bts rcx, rdi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and bl, 120 # instrumentation
cmovnp cx, si
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and dl, 60 # instrumentation
cmovnl esi, edi
cmovnbe edi, edx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
xor rax, 459999114
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
xor al, -4
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
test dil, bl
btr rdx, 72
test cl, 101
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or bl, dl
bts rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 83
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
xor rbx, 89
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
xor al, 9
or al, 24
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 12
or rbx, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

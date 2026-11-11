.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
or cl, dl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and cl, sil
and bl, sil
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and cl, cl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor al, 9
btr si, 208
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 17
and cl, -6
test rdi, 94
bts dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

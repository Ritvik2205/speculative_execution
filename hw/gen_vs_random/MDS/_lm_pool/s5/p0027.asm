.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
btr si, ax
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
or sil, -78
and al, 84
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 100
and sil, sil
test edx, -1561252782
or bl, bl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rax, 4
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or bl, dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
test al, sil
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

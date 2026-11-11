.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 20 # instrumentation
cmovp cx, di
btr esi, eax
or cl, 7
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and sil, 89
xor cl, 55
bt ebx, 19
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and dl, 97 # instrumentation
cmovnp bx, ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test sil, sil
or sil, dil
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 69
or sil, -78
bts bx, 3
cmovnle ax, bx
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

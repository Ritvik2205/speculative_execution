.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
or esi, eax
xor cl, al
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or dl, cl
jmp .bb_0.1
.bb_0.1:
or bl, 127
not dl
and dl, cl
and ax, -4410
test bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
xor rdi, rsi
and dil, -62
and ax, 19224
or rdi, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -55
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
test al, bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
xor bl, al
or ax, 85
bt dx, bx
xor rcx, 71
xor rdx, -59
test al, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
cmovnp rdx, rcx
and eax, 943733866
bts di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and cl, al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or dil, 16
xor bl, sil
not al
or dl, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test al, bl
test eax, 158941032
bts rbx, rdx
test cl, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

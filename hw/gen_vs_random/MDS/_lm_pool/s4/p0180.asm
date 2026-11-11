.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
bts rdi, rax
or dl, bl
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
jmp .bb_0.1
.bb_0.1:
test sil, bl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and si, ax
xor dl, -19
jmp .bb_0.3
.bb_0.3:
test dil, al
or al, dil
not dl
or dl, -89
or dl, sil
test cl, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

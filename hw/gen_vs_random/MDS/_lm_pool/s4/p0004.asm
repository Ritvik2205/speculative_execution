.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and al, 14
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
or al, -22
and rsi, 22
or cl, al
xor sil, -14
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
or al, -24
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rdi
test sil, bl
or ax, 30524
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
and di, 91
test al, 91
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
or eax, 1725503461
jmp .bb_0.1
.bb_0.1:
test dil, -51
test sil, dl
bts rdx, 200
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
cmovnp rdx, rsi
or dl, bl
xor dl, sil
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

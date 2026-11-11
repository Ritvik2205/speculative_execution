.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
not al
cmovnb rbx, rdi
xor al, dl
btc rbx, 35
bts di, 37
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
or dl, bl
xor bl, sil
or bl, 43
xor cl, 55
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
xor dil, cl
test rax, 1000448998
jmp .bb_0.3
.bb_0.3:
or cl, bl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rax, 1886208862
or sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

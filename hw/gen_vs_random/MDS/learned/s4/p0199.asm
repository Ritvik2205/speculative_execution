.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor bl, 67
bts rsi, rcx
jmp .bb_0.1
.bb_0.1:
bt di, dx
test eax, 158941032
and dl, sil
xor al, bl
and al, -8
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.2
.bb_0.2:
or dil, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

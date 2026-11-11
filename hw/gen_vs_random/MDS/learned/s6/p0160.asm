.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
btc dx, 67
or cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
bt ax, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or dl, bl
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
test eax, 343548072
or rdx, -48
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
or ax, -11837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

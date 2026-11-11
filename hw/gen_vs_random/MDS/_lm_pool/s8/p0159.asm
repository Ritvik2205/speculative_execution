.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and dil, dil
and dil, -62
xor sil, 27
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and dl, bl
or al, -22
and bl, cl
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
or dl, 51
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or dl, cl
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
or dl, -21
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and dl, dl
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
test eax, 343548072
and ax, -4410
and al, sil
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
xor bl, -88
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rax, 1250429750
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

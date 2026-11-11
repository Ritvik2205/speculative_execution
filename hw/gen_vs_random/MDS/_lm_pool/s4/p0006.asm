.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
btc cx, 115
and cx, -2
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
xor cl, sil
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor dil, dl
xor rax, -843636050
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
xor rdx, -59
btr rdi, 129
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

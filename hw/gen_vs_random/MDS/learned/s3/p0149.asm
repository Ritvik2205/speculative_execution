.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and cl, -71
or dil, -76
xor al, dl
not bl
test eax, -409834435
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
or bl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and ecx, -104
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and bl, 68
btc bx, 58
test al, 66
and eax, 454700988
or sil, -49
btc edx, eax
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or dl, cl
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

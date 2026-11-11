.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rdx, 12
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or bl, 127
and sil, -9
test rdi, 17
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
cmovns ax, dx
or al, 25
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and dil, dil
and cl, dl
or si, 94
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

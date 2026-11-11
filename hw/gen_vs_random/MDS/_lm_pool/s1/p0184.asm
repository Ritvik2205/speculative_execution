.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], esi
or sil, bl
mov dl, sil
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
btc ax, si
jmp .bb_0.1
.bb_0.1:
xor dil, 81
jmp .bb_0.2
.bb_0.2:
and bl, cl
and di, 91
xor bl, dl
xor cl, al
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
or cl, dil
or al, 54
xor dil, -124
xor ax, -16696
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 104 # instrumentation
mov edi, 16
xor bl, sil
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 24
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
cmp sil, -11
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
add al, sil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
btc ax, si
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

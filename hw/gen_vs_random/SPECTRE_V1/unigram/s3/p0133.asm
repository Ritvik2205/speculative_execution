.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 933895314
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
xor bl, al
sub dl, al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 21
mul dil
lea eax, qword ptr [rcx + rdi + 27]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 8
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

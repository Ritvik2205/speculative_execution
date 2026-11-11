.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edi, -91
sub ecx, 98
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdx
cmovnz dx, ax
add sil, 88 # instrumentation
sbb sil, 61
sbb sil, -78
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
add dl, 40 # instrumentation
btc rdx, rdx
lea ebx, qword ptr [rcx + rdx + 54]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 15
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
test cl, -24
xor bl, cl
or ecx, 13
add dl, 107 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
add bl, 97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

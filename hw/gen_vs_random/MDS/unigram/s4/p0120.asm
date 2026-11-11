.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
btc si, 39
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
or al, -48
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and cl, -109 # instrumentation
not rax
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
or dl, dil
or sil, -8
and rcx, 85
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 82
and cl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
cmovnp rdi, rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
test rsi, 879594088
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

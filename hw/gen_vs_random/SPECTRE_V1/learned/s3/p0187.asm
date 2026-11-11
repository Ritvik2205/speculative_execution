.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add rax, 1503210561
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
add bl, 26 # instrumentation
sbb sil, al
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and eax, 83
setno dil
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
cmovb bx, cx
and cl, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
or dl, 1 # instrumentation
add al, -47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
bt rcx, 78
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

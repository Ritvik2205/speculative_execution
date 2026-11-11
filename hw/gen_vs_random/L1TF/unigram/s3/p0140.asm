.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
add bl, -53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bts rsi, 94
cmp cl, -71
mov rcx, 63
not ebx
cmp dx, 20
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 89
cwd
cmp bl, 92
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
inc ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

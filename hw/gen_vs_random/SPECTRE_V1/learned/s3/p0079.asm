.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -47
sub cl, -47
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 93
test al, 34
test sil, -31
setnle dl
and dl, -109
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and dl, -111
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmp al, 53
and al, 33
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

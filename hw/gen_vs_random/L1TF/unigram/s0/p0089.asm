.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
cmp bl, 91
setnle dil
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
mov dl, 54
jmp .bb_0.1
.bb_0.1:
cmovb rax, rdi
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 50
cmp bl, 4
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
sbb rbx, 11
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

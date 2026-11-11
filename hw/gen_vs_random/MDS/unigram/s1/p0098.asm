.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 36
test dl, al
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
test eax, 298249463
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
test dl, bl
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 90
and dl, 125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
and al, -83 # instrumentation
cmovnp rax, rsi
or al, -24
xor dl, -43
bts rsi, 221
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

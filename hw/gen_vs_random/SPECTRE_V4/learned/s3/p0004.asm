.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add dl, 41
not di
and al, -127
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 11
lea rax, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 11
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
sub bl, 17
cmp al, cl
cmp al, bl
cmovs rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
cmovs rax, rdi
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

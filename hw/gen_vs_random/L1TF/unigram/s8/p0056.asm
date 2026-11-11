.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 68
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
btc ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
add al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sbb rsi, 90
add cl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
or dl, -67
cmp si, dx
test dil, cl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
xchg al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

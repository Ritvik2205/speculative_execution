.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub di, si
add bl, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
cmp rdx, rdx
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
sub si, -105
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 2
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 28
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
lea esi, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
cmp dil, dil
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
movzx di, al
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

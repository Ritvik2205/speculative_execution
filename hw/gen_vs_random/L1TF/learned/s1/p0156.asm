.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
sbb dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
adc rax, -1877286258
not dil
sub rsi, 17
cmovs dx, cx
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
setnl dl
bt eax, 31
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
sub ax, -12040
and dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
cmovz rbx, rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 67
xor di, cx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 26
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
xor rax, -68
adc al, -90
movzx esi, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

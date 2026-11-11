.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
bts rcx, rbx
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
sbb rdi, 110
sbb cl, 83
mov al, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
lea rdi, qword ptr [rdi + rax + 98]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
movsx dx, cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 9
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
cmovs rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

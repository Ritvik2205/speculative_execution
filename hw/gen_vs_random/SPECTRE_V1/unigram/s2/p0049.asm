.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
bt rcx, rax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
bts edx, edi
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
cmp rcx, 55
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 60
cmp bl, bl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub si, 32
cdq
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
cmp sil, 25
and rcx, rcx
xor al, -74
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 2
cmovnle eax, ebx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
btc dx, cx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

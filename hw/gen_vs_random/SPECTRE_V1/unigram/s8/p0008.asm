.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
mov cl, sil
add dl, 78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
lea rax, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
xor rax, rcx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
bts rbx, rax
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
lea dx, qword ptr [rdx + rdx]
setl dil
movzx ax, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

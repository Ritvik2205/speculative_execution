.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 64
cmp sil, al
test bl, -8
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
or di, 0b1000000000000000 # instrumentation
bsf di, di
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test esi, 35
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 44
sub dil, -111
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
xor al, sil
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
lea di, qword ptr [rdi + rcx]
adc ax, si
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

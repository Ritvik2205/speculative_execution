.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
and di, si
adc bx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
sbb rdx, 98
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovs di, dx
adc esi, -41
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
sbb al, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

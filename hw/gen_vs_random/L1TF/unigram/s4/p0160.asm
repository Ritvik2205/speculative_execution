.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
lea rcx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and cl, cl
add dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
cmovnle di, di
lea cx, qword ptr [rax + rbx + 92]
add bl, -71 # instrumentation
adc ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
xchg bl, bl
btr edi, 1
xor dx, 13
or cl, 105
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
add sil, -49 # instrumentation
adc sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

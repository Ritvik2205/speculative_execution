.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg sil
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add al, -63 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
add dil, 27 # instrumentation
setnle dil
test ebx, edi
xor rbx, rcx
lea rdi, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
add al, 66 # instrumentation
cmovnp ecx, esi
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
sbb rbx, -117
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
sub rbx, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cbw
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 63
bts rax, rdi
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 28
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

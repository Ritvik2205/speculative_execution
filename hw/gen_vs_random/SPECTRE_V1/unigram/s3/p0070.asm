.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], di
sub dil, al
cmovs rdi, rdi
add al, 120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
or sil, 122
cmovno rbx, rcx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
test di, si
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
xor ecx, 89
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 74
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
imul dx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

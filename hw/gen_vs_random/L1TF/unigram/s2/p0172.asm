.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 5
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
add cl, 39 # instrumentation
setle al
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
not dil
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
nop
xor dl, 19
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
cmovnbe rcx, rax
setb bl
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

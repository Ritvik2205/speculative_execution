.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, dx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test bl, 84
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 60
and dl, -49
test bl, 45
xor ax, 0
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt esi, 50
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
cmp cl, dl
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
setnle al
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
not si
xchg rbx, rcx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
sub cl, dil
add al, 41 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 60
bswap rcx
xor bl, -38
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

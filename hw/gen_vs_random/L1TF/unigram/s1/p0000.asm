.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 15
sub cl, -49
add si, -5
dec di
add al, 24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sub cl, al
cmovz ax, si
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
setb dil
or si, 0b1000000000000000 # instrumentation
bsf di, si
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
add cl, 89 # instrumentation
adc cl, dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

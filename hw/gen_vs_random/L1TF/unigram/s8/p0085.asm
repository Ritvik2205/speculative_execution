.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 20
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
cmovnp di, bx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
sub rdx, 43
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
setle cl
or dl, dl
cmovnp si, di
test rsi, rdi
xor dl, dil
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
bts edi, eax
lea rsi, qword ptr [rax]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

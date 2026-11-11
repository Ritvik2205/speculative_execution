.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 87
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
lea rax, qword ptr [rax + rbx]
lea edi, qword ptr [rax + rsi]
setnl dl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 45
bswap rdx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -41 # instrumentation
xchg dl, al
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 29
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
cmovl esi, ebx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 94
lea edi, qword ptr [rsi + rcx + 11]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

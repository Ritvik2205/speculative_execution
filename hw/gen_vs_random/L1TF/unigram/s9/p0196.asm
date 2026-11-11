.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
dec dil
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
setnbe cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
add sil, -61
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and di, 41
add bl, -45 # instrumentation
cmovs rcx, rcx
adc rdi, 127
dec eax
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

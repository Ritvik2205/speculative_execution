.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 80
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], eax
cmovnb rsi, rbx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
cdq
setp cl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], eax
lea rdi, qword ptr [rsi]
add sil, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
sub bl, -19
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 70
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

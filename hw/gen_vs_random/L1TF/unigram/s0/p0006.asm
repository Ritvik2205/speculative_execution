.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
setl dl
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
add bl, 55 # instrumentation
lea ebx, qword ptr [rax + rsi + 73]
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
inc rsi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 30
cmovnp si, cx
adc sil, 74
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 93
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

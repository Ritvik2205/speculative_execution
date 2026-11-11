.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax + rdi]
btc rsi, 15
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 11
xor dl, dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 17
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
lea si, qword ptr [rbx + rsi + 54]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
inc al
setnb bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
add dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
adc al, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -13240
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
lea rbx, qword ptr [rdi + rdi + 63323]
setz dl
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and sil, 11
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rdx, rsi
lea si, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
mul dil
add cl, -27 # instrumentation
setle cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
cmovnb rdx, rsi
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

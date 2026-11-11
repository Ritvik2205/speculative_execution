.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and ax, -22629
setz dl
and sil, 52
lea rbx, qword ptr [rdi + rdi + 63323]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmovnb rdx, rsi
lea si, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
cmovle rdx, rsi
mul dil
add cl, -27 # instrumentation
setle cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
test al, 48
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
movsx ebx, bl
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
sub dl, -48
sbb eax, -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

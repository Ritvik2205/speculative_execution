.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
setnbe dl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rax
setb dil
adc dil, al
bt rcx, 38
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 55
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 79
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
sub di, ax
add al, 39 # instrumentation
cmovnb ax, si
cmovle rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

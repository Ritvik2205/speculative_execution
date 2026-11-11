.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, 47
sub ax, 7297
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], bx
cmp dil, al
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
setnl cl
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
lea rbx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
setl sil
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rax], rax
cmovl rax, rdx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
sbb esi, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
xchg ecx, edi
sub bl, 15
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
cmp dil, 93
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
movsx edi, cl
and cl, 39
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 47
neg eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

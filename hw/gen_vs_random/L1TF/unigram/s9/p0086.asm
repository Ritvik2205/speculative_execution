.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
sub al, dil
inc al
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
inc al
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
test eax, 645518295
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
sbb esi, ecx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
not edx
test dil, -126
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

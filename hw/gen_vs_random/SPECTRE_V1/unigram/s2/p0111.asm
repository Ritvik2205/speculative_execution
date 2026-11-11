.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
imul esi
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
sub dil, -111
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
test dil, -116
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rsi
add al, -44
xchg al, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, cl
bts rcx, 81
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], edi
sbb al, bl
cmp dil, dil
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

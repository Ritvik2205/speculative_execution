.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -104
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
lea ecx, qword ptr [rbx + rbx + 2102]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
add esi, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

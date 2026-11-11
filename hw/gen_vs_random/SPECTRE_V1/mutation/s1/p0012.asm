.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rsi + rax]
lea rdx, qword ptr [rcx + rcx + 8848]
sub al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
cmovnb si, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
add cl, 72 # instrumentation
adc al, 117
sbb rax, 342397759
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
xor edi, 115
and cl, cl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
add dl, dl
jmp .bb_0.2
.bb_0.2:
add al, 36 # instrumentation
cmovnp rbx, rsi
add eax, 1938514106
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
lea rbx, qword ptr [rax + rdx]
cmp al, 62
inc rax
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

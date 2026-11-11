.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 113 # instrumentation
setnb dl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, -6
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
add ax, 6656
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
add al, -76 # instrumentation
cmovnbe di, di
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 68
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
sbb dil, sil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
lea rax, qword ptr [rcx]
btr esi, edi
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rdi + rdx + 30816]
not cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
sets dl
setl cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

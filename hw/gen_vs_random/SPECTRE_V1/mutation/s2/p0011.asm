.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
add dl, 113 # instrumentation
setnb dl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
jp .bb_0.1
jmp .exit_0
.bb_0.1:
btr esi, edi
add ax, 6656
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
add al, -76 # instrumentation
cmovnbe di, di
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
lea rax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
sbb dil, sil
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
sub bl, -19
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

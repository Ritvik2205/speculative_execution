.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
add dl, 113 # instrumentation
setnb dl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
add al, -76 # instrumentation
cmovnbe di, di
add ax, 23362
btr esi, edi
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 68
lea rax, qword ptr [rcx]
sub bl, -6
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
sbb dil, sil
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

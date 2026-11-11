.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -76 # instrumentation
adc al, 71
cmovnz cx, ax
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
cwde
not esi
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
cmovnz rbx, rdx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
cmovp cx, si
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
xor bl, -38
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

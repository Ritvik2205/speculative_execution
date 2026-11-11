.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
sub esi, 62
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
not bl
cmovo ax, si
add ax, 19
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
or ax, 10
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 46
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 18
cmovl rbx, rbx
or rax, -263404965
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

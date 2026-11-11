.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
sub bl, cl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
adc al, cl
xor bl, dl
or esi, -74
sub cl, -21
sub cl, -21
add al, 18
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

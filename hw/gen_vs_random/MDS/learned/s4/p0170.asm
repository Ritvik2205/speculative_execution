.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 100
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
test di, 64
and ax, 19740
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
or al, 37
not bl
or rax, -1561934807
and cl, -71
or cl, 6
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
test al, 22
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and dl, dil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
jmp .bb_0.4
.bb_0.4:
sub dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

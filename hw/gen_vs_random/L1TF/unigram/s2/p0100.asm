.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdi
lea di, qword ptr [rbx + rcx + 4]
add cl, bl
lea dx, qword ptr [rcx + rdx]
sbb edx, edx
sbb cl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
sbb al, dil
xchg edx, ebx
sub rsi, rax
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
cmp cl, -71
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

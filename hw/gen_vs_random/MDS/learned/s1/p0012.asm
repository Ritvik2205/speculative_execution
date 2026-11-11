.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 67
bts rsi, rdx
and rax, -1931765367
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
xor bx, 51
and bl, cl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
xor dil, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or ax, 16560
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
xor dl, 8
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

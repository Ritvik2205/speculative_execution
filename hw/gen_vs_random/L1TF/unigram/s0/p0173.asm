.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rdi + rcx + 4]
add dl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
add dl, 78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
setb sil
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
test eax, -2032743474
cmp ecx, 31
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], bx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 1 # instrumentation
add bl, -9 # instrumentation
cmovs bx, cx
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

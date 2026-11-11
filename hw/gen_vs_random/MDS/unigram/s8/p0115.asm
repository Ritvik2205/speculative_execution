.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 54
xor bx, 91
cmovnb eax, edx
and si, -121
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and bl, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
cmovl ax, bx
and al, 54 # instrumentation
cmovnp cx, cx
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 6
or si, 0b1000000000000000 # instrumentation
bsf si, si
bts rdi, 130
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
or al, 30
or dx, 125
test dl, 48
not dl
and bl, 68
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

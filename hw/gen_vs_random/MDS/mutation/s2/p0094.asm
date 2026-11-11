.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
cmovnp dx, di
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
cmovle di, ax
and al, dl
xor dl, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovl di, si
cmovle rcx, rbx
btc rbx, rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and cl, -111
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
and dl, 84 # instrumentation
cmovle ax, si
or al, 54
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

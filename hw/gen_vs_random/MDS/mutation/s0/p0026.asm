.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp dx, di
cmovle di, ax
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and al, dl
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
xor dl, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
or al, 54
btc rbx, rbx
cmovle rcx, rbx
and cl, -6
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
cmovl di, si
and dl, 84 # instrumentation
cmovle ax, si
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

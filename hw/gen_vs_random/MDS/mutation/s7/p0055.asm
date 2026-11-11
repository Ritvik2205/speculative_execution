.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
cmovle di, ax
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
cmovnp dx, di
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
xor dl, sil
jmp .bb_0.1
.bb_0.1:
cmovle rcx, rbx
and cl, -6
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and dl, 84 # instrumentation
cmovle ax, si
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
btc rbx, rbx
or al, -58
cmovl di, si
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

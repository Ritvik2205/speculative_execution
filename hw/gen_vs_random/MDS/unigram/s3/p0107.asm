.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 84 # instrumentation
cmovle cx, ax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
btr di, si
xor ax, ax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
not dl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 80
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
not edi
or dil, 16
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
jmp .bb_0.1
.bb_0.1:
test si, 38
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and sil, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
cmovo rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

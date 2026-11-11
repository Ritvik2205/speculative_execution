.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno al
not ax
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
cmp si, -11
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
sets dil
and dl, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
add bl, -5 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
not si
add al, 123 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

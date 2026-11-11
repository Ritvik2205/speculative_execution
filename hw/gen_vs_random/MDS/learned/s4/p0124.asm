.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and ax, 19224
test ecx, -1843375753
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and dil, -62
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or rdx, -109
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
or eax, -927349615
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
or sil, -78
and di, 99
xor al, bl
xor sil, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, -1931765367
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and sil, 89
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and cl, -6
bt edi, esi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
or al, 30
or sil, dl
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
